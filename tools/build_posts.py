# -*- coding: utf-8 -*-
"""把 wechat_articles.json 的 27 篇合入 posts.js：
- 重编号 w02..w28（避开已有 w01）
- 按内容标注 subcat（三级分类）与 size（主/副卡片）
- 给 w01 补 subcat/size
- 插入到 window.POSTS 数组末尾
排序交由前端按 date 倒序，故此处顺序无关。
"""
import json, re

DATA = json.load(open("wechat_articles.json", encoding="utf-8"))

# 与抓取顺序对齐的三级分类（AI 创作 / 工具资源 / 设计思考 / Figma 实战）
SUBCAT = [
    "AI 创作","AI 创作","工具资源","工具资源","设计思考","AI 创作","工具资源",
    "AI 创作","AI 创作","工具资源","AI 创作","AI 创作","AI 创作","工具资源",
    "工具资源","设计思考","设计思考","Figma 实战","Figma 实战","设计思考",
    "设计思考","工具资源","设计思考","AI 创作","AI 创作","设计思考","设计思考",
]

def jstr(s):
    if s is None:
        s = ""
    s = str(s).replace("\\", "\\\\").replace('"', '\\"').replace("\r", "")
    return '"' + s + '"'

def make_excerpt(md):
    lines = [l for l in (md or "").split("\n") if l.strip() and not l.strip().startswith("![]")]
    text = " ".join(lines)
    text = re.sub(r'[#>*`\-]', '', text)
    text = re.sub(r'\s+', ' ', text).strip()
    return text[:60] + ("…" if len(text) > 60 else "")

def main():
    if '"w28"' in open("js/posts.js", encoding="utf-8").read():
        print("posts.js 已构建，跳过。")
        return

    entries = []
    for idx, art in enumerate(DATA):
        nid = "w%02d" % (idx + 2)          # w02 .. w28
        sub = SUBCAT[idx] if idx < len(SUBCAT) else "设计思考"
        md = art.get("md", "") or ""
        size = "main" if len(md) >= 4500 else "sub"
        lines = md.split("\n")
        md_arr = ",\n    ".join(jstr(ln) for ln in lines)
        excerpt = make_excerpt(md)
        obj = (
            "{\n"
            '  id: %s,\n' % jstr(nid) +
            '  title: %s,\n' % jstr(art.get("title", "")) +
            '  cat: "wechat",\n'
            '  catLabel: "公众号",\n'
            '  subcat: %s,\n' % jstr(sub) +
            '  size: %s,\n' % jstr(size) +
            '  date: %s,\n' % jstr(art.get("date", "")) +
            '  readTime: "原文转载",\n'
            '  author: %s,\n' % jstr(art.get("author", "插图设计研习社")) +
            '  source: "wechat",\n'
            '  url: %s,\n' % jstr(art.get("url", "")) +
            '  excerpt: %s,\n' % jstr(excerpt) +
            "  md: [\n    %s\n  ].join(\"\\n\")\n}" % md_arr
        )
        entries.append(obj)

    block = ",\n".join(entries)

    path = "js/posts.js"
    txt = open(path, encoding="utf-8").read()

    # 给 w01 补 subcat / size
    txt = txt.replace(
        '  cat: "wechat",\n  catLabel: "公众号",',
        '  cat: "wechat",\n  catLabel: "公众号",\n  subcat: "AI 创作",\n  size: "main",'
    )

    # 在末尾 ]; 前插入 27 篇
    txt = txt.replace("\n];", "\n,\n" + block + "\n];", 1)

    open(path, "w", encoding="utf-8").write(txt)
    print("已写入 %d 篇公众号文章 (w02..w28) 到 posts.js" % len(entries))

if __name__ == "__main__":
    main()
