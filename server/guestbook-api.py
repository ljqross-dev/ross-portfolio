#!/usr/bin/env python3
"""
Ross 留言板 + 市场数据 API 服务 — 纯标准库实现
监听 127.0.0.1:8888，提供：
  - GET/POST /api/guestbook       留言板 CRUD
  - GET       /api/market         A 股实时市场总览（代理腾讯财经 qt.gtimg.cn）
  - GET       /api/health         健康检查
数据存储：/var/lib/ross-data/guestbook.json
市场数据：内存缓存 90s，TTL 后异步刷新
"""

import json
import os
import time
import re
import threading
import urllib.request
import urllib.error
from http.server import HTTPServer, BaseHTTPRequestHandler
from urllib.parse import urlparse

# ---- 配置 ----
DATA_DIR = "/var/lib/ross-data"
DATA_FILE = os.path.join(DATA_DIR, "guestbook.json")
CODES_FILE = os.path.join(DATA_DIR, "a_stock_codes.json")  # A 股代码缓存
HOST = "127.0.0.1"
PORT = 8888
MAX_MESSAGES = 200
RATE_LIMIT = 5
RATE_WINDOW = 60
MAX_TEXT_LEN = 500
MAX_NAME_LEN = 20

# ---- 市场数据缓存 ----
MARKET_TTL = 90             # 缓存 90 秒
_market_cache = {
    "data": None,
    "updated_at": 0,
    "updating": False,
    "last_error": None
}

# ---- 留言数据读写 ----
def load_messages():
    if not os.path.exists(DATA_FILE):
        return []
    try:
        with open(DATA_FILE, "r", encoding="utf-8") as f:
            data = json.load(f)
        if isinstance(data, list):
            return data
    except (json.JSONDecodeError, IOError):
        pass
    return []


def save_messages(messages):
    os.makedirs(DATA_DIR, exist_ok=True)
    with open(DATA_FILE, "w", encoding="utf-8") as f:
        json.dump(messages, f, ensure_ascii=False, indent=2)


# ---- Rate limiter ----
_rate_records = {}


def is_rate_limited(ip):
    now = time.time()
    window_start = now - RATE_WINDOW
    _rate_records.setdefault(ip, [])
    _rate_records[ip] = [t for t in _rate_records[ip] if t > window_start]
    if len(_rate_records[ip]) >= RATE_LIMIT:
        return True
    _rate_records[ip].append(now)
    return False


# ---- 防 XSS ----
def esc(text):
    return (text
            .replace("&", "&amp;")
            .replace("<", "&lt;")
            .replace(">", "&gt;")
            .replace('"', "&quot;")
            .replace("'", "&#x27;"))


# ============ 市场数据模块 ============
# 腾讯财经 qt.gtimg.cn 协议
# 返回格式: v_<code>="1~名称~代码~现价~昨收~今开~成交量(手)~...~涨跌额~涨跌幅%~最高~最低~..."
# 字段索引: [3]=现价, [4]=昨收, [30]=涨跌额, [31]=涨跌幅%, [32]=最高, [33]=最低

QT_PAT = re.compile(r'v_([\w]+)="([^"]+)"')


def _fetch_qt(url, timeout=20):
    """腾讯财经 GET"""
    req = urllib.request.Request(url, headers={
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36",
        "Accept": "*/*",
    })
    with urllib.request.urlopen(req, timeout=timeout) as r:
        return r.read().decode("gbk", errors="ignore")


def _gen_codes():
    """生成 A 股代码范围（沪深京）"""
    codes = []
    for i in range(600000, 604000):   codes.append(f"sh{i}")  # 上证主板
    for i in range(688000, 689000):   codes.append(f"sh{i}")  # 科创板
    for i in range(0, 3000):          codes.append(f"sz{i:06d}")  # 深证主板
    for i in range(300000, 302000):   codes.append(f"sz{i}")  # 创业板
    return codes


def _classify_limit(code):
    """判断涨停幅度（%）"""
    if code.startswith(("sz30", "sz301")): return 20
    if code.startswith("sh688"):           return 20
    return 10


def _fetch_market_sync():
    """同步拉取并统计 A 股市场数据"""
    # 1. 主要指数（必须拉）
    indices_codes = [
        ("sh000001", "上证指数"),
        ("sz399001", "深证成指"),
        ("sz399006", "创业板指"),
        ("sh000300", "沪深300"),
        ("sh000016", "上证50"),
        ("sz399905", "中证500"),
        ("sh000688", "科创板50"),
    ]
    idx_url = "https://qt.gtimg.cn/q=" + ",".join(c for c, _ in indices_codes)
    idx_data = _fetch_qt(idx_url, timeout=15)

    indices = []
    for code, label in indices_codes:
        m = re.search(rf'v_{code}="([^"]+)"', idx_data)
        if not m:
            continue
        parts = m.group(1).split("~")
        if len(parts) < 33:
            continue
        try:
            indices.append({
                "code": code,
                "name": parts[1] if len(parts) > 1 else label,
                "price": float(parts[3]),
                "prev": float(parts[4]),
                "change": float(parts[31]),  # 涨跌额
                "pct": float(parts[32]),     # 涨跌幅%
                "time": parts[30] if len(parts) > 30 else "",
            })
        except (ValueError, IndexError):
            continue

    # 2. 美元兑人民币（腾讯没有，提供 fallback: 静态值）
    fx = 7.18  # 默认 fallback

    # 3. 批量拉 A 股行情（8 批 × 600 只）
    all_codes = _gen_codes()
    stats = {"up": 0, "down": 0, "flat": 0, "zt": 0, "dt": 0, "total": 0}
    flow_pos = 0.0   # 资金流入
    flow_neg = 0.0   # 资金流出

    BATCH = 600
    for start in range(0, min(4800, len(all_codes)), BATCH):
        batch = all_codes[start:start + BATCH]
        url = "https://qt.gtimg.cn/q=" + ",".join(batch)
        try:
            data = _fetch_qt(url, timeout=15)
        except Exception:
            time.sleep(0.5)
            continue
        for code, payload in QT_PAT.findall(data):
            parts = payload.split("~")
            if len(parts) < 33:
                continue
            try:
                pct = float(parts[32])  # 涨跌幅%
                amount_yi = float(parts[37]) / 1e8 if len(parts) > 37 and parts[37] else 0
                # 资金估算：成交额 × sign(涨跌幅) × 比例
                if pct > 0:
                    stats["up"] += 1
                    flow_pos += amount_yi * min(abs(pct) / 10, 0.4)
                elif pct < 0:
                    stats["down"] += 1
                    flow_neg += amount_yi * min(abs(pct) / 10, 0.4)
                else:
                    stats["flat"] += 1
                limit = _classify_limit(code)
                if pct >= limit - 0.1:
                    stats["zt"] += 1
                elif pct <= -(limit - 0.1):
                    stats["dt"] += 1
                stats["total"] += 1
            except (ValueError, IndexError):
                continue
        time.sleep(0.3)  # 礼貌延迟

    # 主力资金净流入 = 流入 - 流出
    flow_net = round(flow_pos - flow_neg, 2)

    # 4. 热门行业（取涨跌幅最大的主要指数作为"热门"）
    hot = None
    if indices:
        top_idx = max(indices, key=lambda x: x["pct"])
        if top_idx["pct"] > 0:
            hot = {
                "name": top_idx["name"],
                "pct": f"+{top_idx['pct']:.2f}%"
            }
        else:
            # 大盘跌，找跌幅最小的指数
            hot = {
                "name": top_idx["name"],
                "pct": f"{top_idx['pct']:+.2f}%"
            }

    # 5. 涨跌幅进度条数据（涨/平/跌 占比）
    total_count = stats["up"] + stats["flat"] + stats["down"]
    if total_count > 0:
        stats["up_ratio"] = round(stats["up"] / total_count * 100, 1)
        stats["flat_ratio"] = round(stats["flat"] / total_count * 100, 1)
        stats["down_ratio"] = round(stats["down"] / total_count * 100, 1)

    # 6. 大盘指数（上证指数）作为主要显示
    sh_idx = next((i for i in indices if i["code"] == "sh000001"), None)
    if sh_idx is None and indices:
        sh_idx = indices[0]

    data = {
        "_fetched_at": time.time(),
        "indices": indices,
        "sh": sh_idx,  # 上证指数（主要）
        "up": stats["up"],
        "down": stats["down"],
        "flat": stats["flat"],
        "zt": stats["zt"],
        "dt": stats["dt"],
        "total": stats["total"],
        "flow_yi": flow_net,
        "hot": hot,
        "fx": fx,
        "up_ratio": stats.get("up_ratio", 0),
        "flat_ratio": stats.get("flat_ratio", 0),
        "down_ratio": stats.get("down_ratio", 0),
    }
    return data


def _refresh_market_async():
    """异步刷新缓存"""
    if _market_cache["updating"]:
        return
    _market_cache["updating"] = True

    def _do():
        try:
            data = _fetch_market_sync()
            _market_cache["data"] = data
            _market_cache["updated_at"] = time.time()
            _market_cache["last_error"] = None
            print(f"[market] 刷新成功: up={data['up']} down={data['down']} zt={data['zt']} dt={data['dt']}")
        except Exception as e:
            _market_cache["last_error"] = str(e)
            print(f"[market] 刷新失败: {e}")
        finally:
            _market_cache["updating"] = False

    threading.Thread(target=_do, daemon=True).start()


def get_market_data():
    """获取市场数据：缓存有效则返回缓存；过期则同步拉取一次"""
    now = time.time()
    age = now - _market_cache["updated_at"]
    # 缓存有效
    if _market_cache["data"] is not None and age < MARKET_TTL:
        # 临近过期（> TTL * 0.85）异步预热
        if age > MARKET_TTL * 0.85 and not _market_cache["updating"]:
            _refresh_market_async()
        return _market_cache["data"]

    # 无缓存 / 已过期：同步拉取
    try:
        data = _fetch_market_sync()
        _market_cache["data"] = data
        _market_cache["updated_at"] = time.time()
        _market_cache["last_error"] = None
        print(f"[market] 同步拉取成功: up={data['up']} down={data['down']}")
        return data
    except Exception as e:
        _market_cache["last_error"] = str(e)
        if _market_cache["data"]:
            return _market_cache["data"]  # fallback
        # 首次也失败，返回空数据
        return {
            "indices": [], "sh": None,
            "up": 0, "down": 0, "flat": 0,
            "zt": 0, "dt": 0, "total": 0,
            "flow_yi": 0, "hot": None, "fx": None,
            "up_ratio": 0, "flat_ratio": 0, "down_ratio": 0
        }


# ---- HTTP 处理器 ----
class RossAPIHandler(BaseHTTPRequestHandler):

    def _send_json(self, data, status=200):
        body = json.dumps(data, ensure_ascii=False).encode("utf-8")
        self.send_response(status)
        self.send_header("Content-Type", "application/json; charset=utf-8")
        self.send_header("Content-Length", len(body))
        self.send_header("Access-Control-Allow-Origin", "*")
        self.send_header("Access-Control-Allow-Methods", "GET, POST, OPTIONS")
        self.send_header("Access-Control-Allow-Headers", "Content-Type")
        self.send_header("Cache-Control", "public, max-age=30")
        self.end_headers()
        self.wfile.write(body)

    def _get_ip(self):
        xff = self.headers.get("X-Forwarded-For", "")
        if xff:
            return xff.split(",")[0].strip()
        return self.client_address[0]

    def log_message(self, fmt, *args):
        """静默普通访问日志"""
        pass

    def do_OPTIONS(self):
        self._send_json({"ok": True})

    def do_GET(self):
        path = urlparse(self.path).path

        # === 留言板 GET ===
        if path == "/api/guestbook":
            messages = load_messages()
            self._send_json({"messages": messages, "count": len(messages)})
            return

        # === 市场数据 GET ===
        if path == "/api/market":
            data = get_market_data()
            payload = dict(data)
            payload["cache_age"] = int(time.time() - _market_cache["updated_at"]) \
                if _market_cache["updated_at"] else -1
            payload["server_time"] = int(time.time())
            self._send_json(payload)
            return

        # === 健康检查 ===
        if path == "/api/health":
            self._send_json({
                "ok": True,
                "market_updated_at": _market_cache["updated_at"],
                "market_age": int(time.time() - _market_cache["updated_at"])
                    if _market_cache["updated_at"] else -1,
                "market_updating": _market_cache["updating"],
                "last_error": _market_cache["last_error"]
            })
            return

        self._send_json({"error": "not found"}, 404)

    def do_POST(self):
        path = urlparse(self.path).path

        if path == "/api/guestbook":
            ip = self._get_ip()
            if is_rate_limited(ip):
                self._send_json({"error": "太快了，请稍后再试"}, 429)
                return

            length = int(self.headers.get("Content-Length", 0))
            if length == 0 or length > 10000:
                self._send_json({"error": "请求内容为空或过大"}, 400)
                return

            try:
                body = json.loads(self.rfile.read(length))
            except json.JSONDecodeError:
                self._send_json({"error": "JSON 格式错误"}, 400)
                return

            name = str(body.get("name", "匿名访客")).strip()[:MAX_NAME_LEN] or "匿名访客"
            text = str(body.get("text", "")).strip()
            if not text:
                self._send_json({"error": "内容不能为空"}, 400)
                return
            text = text[:MAX_TEXT_LEN]

            msg = {
                "id": int(time.time() * 1000),
                "name": name,
                "text": text,
                "date": time.strftime("%Y-%m-%d %H:%M", time.localtime()),
                "initial": name[0].upper()
            }

            messages = load_messages()
            messages.insert(0, msg)
            if len(messages) > MAX_MESSAGES:
                messages = messages[:MAX_MESSAGES]
            save_messages(messages)

            self._send_json({"ok": True, "message": msg})
            return

        self._send_json({"error": "not found"}, 404)


if __name__ == "__main__":
    os.makedirs(DATA_DIR, exist_ok=True)
    print(f"Ross API 启动: http://{HOST}:{PORT}/")
    print("  - GET/POST /api/guestbook")
    print("  - GET       /api/market")
    print("  - GET       /api/health")
    # 启动后立即预热市场缓存
    _refresh_market_async()
    server = HTTPServer((HOST, PORT), RossAPIHandler)
    try:
        server.serve_forever()
    except KeyboardInterrupt:
        print("\n服务已停止")
        server.server_close()