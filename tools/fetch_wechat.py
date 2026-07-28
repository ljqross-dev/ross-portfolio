# -*- coding: utf-8 -*-
"""批量抓取微信公众号文章 -> 提取 -> Markdown -> JSON。
关闭沙箱运行（需要真实网络）。
"""
import urllib.request, re, json, sys, time

def unescape(s):
    return (s.replace('&amp;', '&').replace('&lt;', '<').replace('&gt;', '>')
             .replace('&quot;', '"').replace('&#39;', "'").replace('&nbsp;', ' '))

URLS = [
    "https://mp.weixin.qq.com/s/xB5bGz6zr7b9wOsp-drDNw",
    "https://mp.weixin.qq.com/s/8C9qDlD2yabB-VJjBVXRyg",
    "https://mp.weixin.qq.com/s/wymI9ty8t9XicQZWXDMXVw",
    "https://mp.weixin.qq.com/s/6r4GbKfCy8TiAwxq5MJheg",
    "https://mp.weixin.qq.com/s/L1a-O1awRs3d5wg6q-qE1g",
    "https://mp.weixin.qq.com/s/mwLDTrCARMJf81KPnfgPgA",
    "https://mp.weixin.qq.com/s/l-olTDCSbIRbcIrNBQwDfQ",
    "https://mp.weixin.qq.com/s/CXrKLa3ItIc2W0jf1js9lA",
    "https://mp.weixin.qq.com/s/-zXV2lHskZZy0W5Kf9ddEQ",
    "https://mp.weixin.qq.com/s/jC9bjIwWfXs4GzDkm3qYQA",
    "https://mp.weixin.qq.com/s/SOe1MHSVooDcg3bXcWfWvw",
    "https://mp.weixin.qq.com/s/_GVFvPsYM_YxXAq0HUdpiA",
    "https://mp.weixin.qq.com/s/sU8orSWBsrLHpOqnQC23xA",
    "https://mp.weixin.qq.com/s/YIqJDdG5XcO-tUk_IwyboA",
    "https://mp.weixin.qq.com/s/QfEaudkMQFORbCMECY7mLQ",
    "https://mp.weixin.qq.com/s/T6zSdp7otVnvsKdEUCStFw",
    "https://mp.weixin.qq.com/s/KQ2oqWzZGl45ilyc0otcpQ",
    "https://mp.weixin.qq.com/s/4qHpIJ2lEeQPW8ndZLDVUw",
    "https://mp.weixin.qq.com/s/GDAeO63P_WX9E4xJBH-lJQ",
    "https://mp.weixin.qq.com/s/i2JV9yJg__ywSEFXFURi_Q",
    "https://mp.weixin.qq.com/s/FfMtiaiRgnSJQDaM6641nQ",
    "https://mp.weixin.qq.com/s/0laLIqb8jxsTtM4BnBrdrA",
    "https://mp.weixin.qq.com/s/PNpvfQaIz6DIbEdN558jYA",
    "https://mp.weixin.qq.com/s/mGaRWwntCqHBQtvzXWWQDw",
    "https://mp.weixin.qq.com/s/9YXZkomrbsFo8H8cS47Lyg",
    "https://mp.weixin.qq.com/s/wbl93aalshyUpfgjfn1ZQg",
    "https://mp.weixin.qq.com/s/Pd_9lej93aPMUAG8XObSoA",
]

UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0 Safari/537.36"

from html.parser import HTMLParser

class ContentExtractor(HTMLParser):
    def __init__(self, target_id):
        super().__init__(convert_charrefs=True)
        self.target_id = target_id
        self.capture = False
        self.depth = 0
        self.parts = []
    def handle_starttag(self, tag, attrs):
        d = dict(attrs)
        if not self.capture:
            if d.get('id') == self.target_id:
                self.capture = True
                self.depth = 1
                return
        if self.capture:
            self.depth += 1
            s = '<' + tag
            for k, v in attrs:
                s += ' %s="%s"' % (k, v)
            s += '>'
            self.parts.append(s)
    def handle_startendtag(self, tag, attrs):
        if self.capture:
            s = '<' + tag
            for k, v in attrs:
                s += ' %s="%s"' % (k, v)
            s += '/>'
            self.parts.append(s)
    def handle_endtag(self, tag):
        if self.capture:
            self.depth -= 1
            self.parts.append('</%s>' % tag)
            if self.depth <= 0:
                self.capture = False
    def handle_data(self, data):
        if self.capture:
            self.parts.append(data)
    def get_html(self):
        return ''.join(self.parts)

def fetch(url):
    req = urllib.request.Request(url, headers={"User-Agent": UA, "Referer": "https://mp.weixin.qq.com/"})
    return urllib.request.urlopen(req, timeout=30).read().decode("utf-8", "ignore")

def extract_field(html, *patterns):
    for p in patterns:
        m = re.search(p, html, re.S)
        if m:
            return unescape(m.group(1).strip())
    return ""

def to_markdown(body_html):
    import html2text
    h = html2text.HTML2Text()
    h.body_width = 0
    h.ignore_links = False
    h.ignore_images = False
    h.protect_links = True
    h.mark_code = True
    h.single_line_break = False
    md = h.handle(body_html)
    # 清理多余空行
    md = re.sub(r'\n{3,}', '\n\n', md)
    md = md.strip()
    return md

def main():
    import html2text  # 确保可用
    out = []
    seen = set()
    for i, url in enumerate(URLS, 1):
        if url in seen:
            print("[skip dup] %s" % url)
            continue
        seen.add(url)
        try:
            raw = fetch(url)
        except Exception as e:
            print("[ERR %d] %s -> %s" % (i, url, repr(e)))
            continue
        title = extract_field(raw, r'var msg_title\s*=\s*"(.*?)"', r'<meta property="og:title"[^>]*content="(.*?)"', r'<h1 class="rich_media_title"[^>]*>(.*?)</h1>')
        if title:
            title = re.sub(r'<[^>]+>', '', title).strip()
        # 发布时间
        ts = extract_field(raw, r'var ct\s*=\s*"(\d+)"')
        pub = ""
        if ts.isdigit():
            pub = time.strftime("%Y-%m-%d", time.localtime(int(ts)))
        else:
            pt = extract_field(raw, r'var publish_time\s*=\s*"([\d\-]+ \d+:\d+:\d+)"', r'"publish_time"\s*:\s*"([\d\-]+ \d+:\d+:\d+)"')
            if pt:
                pub = pt.split(" ")[0]
            else:
                # 兜底：从页面里找形如 2026-05-13 的日期
                m = re.search(r'(\d{4}-\d{2}-\d{2})', raw)
                if m:
                    pub = m.group(1)
        author = extract_field(raw, r'var account_name\s*=\s*"(.*?)"', r'var nickname\s*=\s*"(.*?)"', r'<a[^>]*id="js_name"[^>]*>(.*?)</a>')
        if not author:
            author = "插图设计研习社"
        # 正文
        ex = ContentExtractor("js_content")
        ex.feed(raw)
        body = ex.get_html()
        if not body:
            body = extract_field(raw, r'<div class="rich_media_content[^"]*"[^>]*>(.*?)</div>\s*<script', r'<div id="js_content"[^>]*>(.*?)</div>')
        # 图片 data-src -> src
        body = re.sub(r'\sdata-src=', ' src=', body)
        body = re.sub(r'\sdata-croporisrc=', ' src=', body)
        md = to_markdown(body) if body else ""
        rec = {
            "id": "w%02d" % (i),
            "title": title,
            "date": pub,
            "author": author,
            "url": url,
            "md": md,
            "subcat": "",
            "size": "",
        }
        out.append(rec)
        print("[%d/%d] %s | %s | %s" % (i, len(URLS), pub, title[:40], url[-20:]))
        time.sleep(1.0)

    with open("wechat_articles.json", "w", encoding="utf-8") as f:
        json.dump(out, f, ensure_ascii=False, indent=1)
    print("\nSaved %d articles -> wechat_articles.json" % len(out))

if __name__ == "__main__":
    main()
