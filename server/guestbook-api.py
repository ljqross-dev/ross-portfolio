#!/usr/bin/env python3
"""
Ross 留言板 API 服务 — 纯标准库实现
监听 127.0.0.1:8888，提供 GET/POST /api/guestbook
数据存储：/var/lib/ross-data/guestbook.json
"""

import json
import os
import time
import re
from http.server import HTTPServer, BaseHTTPRequestHandler
from urllib.parse import urlparse

# ---- 配置 ----
DATA_DIR = "/var/lib/ross-data"
DATA_FILE = os.path.join(DATA_DIR, "guestbook.json")
HOST = "127.0.0.1"
PORT = 8888
MAX_MESSAGES = 200          # 最多保留条数
RATE_LIMIT = 5              # 每分钟最多提交次数
RATE_WINDOW = 60            # 限流窗口（秒）
MAX_TEXT_LEN = 500          # 留言最大长度
MAX_NAME_LEN = 20           # 昵称最大长度

# ---- 数据读写 ----
def load_messages():
    """从 JSON 文件加载留言列表"""
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
    """保存留言列表到 JSON 文件"""
    os.makedirs(DATA_DIR, exist_ok=True)
    with open(DATA_FILE, "w", encoding="utf-8") as f:
        json.dump(messages, f, ensure_ascii=False, indent=2)


# ---- Rate limiter ----
_rate_records = {}  # ip -> [timestamps]


def is_rate_limited(ip):
    now = time.time()
    window_start = now - RATE_WINDOW
    _rate_records.setdefault(ip, [])
    # 清理过期记录
    _rate_records[ip] = [t for t in _rate_records[ip] if t > window_start]
    if len(_rate_records[ip]) >= RATE_LIMIT:
        return True
    _rate_records[ip].append(now)
    return False


# ---- 防 XSS：转义 HTML 特殊字符 ----
def esc(text):
    return (text
            .replace("&", "&amp;")
            .replace("<", "&lt;")
            .replace(">", "&gt;")
            .replace('"', "&quot;")
            .replace("'", "&#x27;"))


# ---- HTTP 处理器 ----
class GuestbookHandler(BaseHTTPRequestHandler):

    def _send_json(self, data, status=200):
        body = json.dumps(data, ensure_ascii=False).encode("utf-8")
        self.send_response(status)
        self.send_header("Content-Type", "application/json; charset=utf-8")
        self.send_header("Content-Length", len(body))
        self.send_header("Access-Control-Allow-Origin", "*")
        self.send_header("Access-Control-Allow-Methods", "GET, POST, OPTIONS")
        self.send_header("Access-Control-Allow-Headers", "Content-Type")
        self.end_headers()
        self.wfile.write(body)

    def _get_ip(self):
        """获取客户端真实 IP（支持 nginx 反向代理）"""
        xff = self.headers.get("X-Forwarded-For", "")
        if xff:
            return xff.split(",")[0].strip()
        return self.client_address[0]

    def do_OPTIONS(self):
        self._send_json({"ok": True})

    def do_GET(self):
        path = urlparse(self.path).path
        if path == "/api/guestbook":
            messages = load_messages()
            self._send_json({"messages": messages, "count": len(messages)})
        else:
            self._send_json({"error": "not found"}, 404)

    def do_POST(self):
        path = urlparse(self.path).path
        if path != "/api/guestbook":
            self._send_json({"error": "not found"}, 404)
            return

        # 限流
        ip = self._get_ip()
        if is_rate_limited(ip):
            self._send_json({"error": "太快了，请稍后再试"}, 429)
            return

        # 读取 body
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


if __name__ == "__main__":
    os.makedirs(DATA_DIR, exist_ok=True)
    print(f"Ross Guestbook API 启动: http://{HOST}:{PORT}/api/guestbook")
    server = HTTPServer((HOST, PORT), GuestbookHandler)
    try:
        server.serve_forever()
    except KeyboardInterrupt:
        print("\n服务已停止")
        server.server_close()
