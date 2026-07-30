/**
 * ai-news.js — AI Design News 数据获取与缓存
 *
 * 信息来源（RSS）：
 *   - TechCrunch AI: https://techcrunch.com/category/artificial-intelligence/feed/
 *   - The Verge AI:  https://www.theverge.com/ai-artificial-intelligence/rss/index.xml
 *   - MIT Tech Review: https://www.technologyreview.com/feed/
 *   - Ars Technica: https://arstechnica.com/tag/ai/feed/
 *   - VentureBeat AI: https://venturebeat.com/category/ai/feed/
 *   - 机器之心: https://www.jiqizhixin.com/rss
 *   - 量子位: https://www.qbitai.com/feed
 *
 * 技术方案：
 *   - 使用 rss2json.com 免费 API（CORS 支持）
 *   - localStorage 缓存 6 小时
 *   - 失败时回退到内置静态新闻
 *   - 每天自动刷新（页面加载时检查缓存过期）
 */
(function () {
  'use strict';

  var CACHE_KEY = 'ross_ai_news_cache';
  var CACHE_TTL = 6 * 60 * 60 * 1000; // 6 小时
  var MAX_NEWS = 8;

  // RSS 源配置
  var RSS_SOURCES = [
    { name: 'TechCrunch', url: 'https://techcrunch.com/category/artificial-intelligence/feed/', logo: 'TC', type: 'en', tag: 'AI' },
    { name: 'The Verge', url: 'https://www.theverge.com/ai-artificial-intelligence/rss/index.xml', logo: 'TV', type: 'en', tag: 'Tech' },
    { name: 'MIT Tech', url: 'https://www.technologyreview.com/feed/', logo: 'MIT', type: 'en', tag: 'Research' },
    { name: 'Ars Technica', url: 'https://arstechnica.com/tag/ai/feed/', logo: 'ARS', type: 'en', tag: 'AI' },
    { name: 'VentureBeat', url: 'https://venturebeat.com/category/ai/feed/', logo: 'VB', type: 'en', tag: 'AI' },
    { name: '机器之心', url: 'https://www.jiqizhixin.com/rss', logo: '机器', type: 'cn', tag: 'AI' },
    { name: '量子位', url: 'https://www.qbitai.com/feed', logo: '量子', type: 'cn', tag: 'AI' }
  ];

  // 兜底静态新闻（当 RSS 获取失败时显示）
  var FALLBACK_NEWS = [
    { title: 'OpenAI 发布 GPT-5 预览版，多模态能力大幅提升', source: 'TechCrunch', logo: 'TC', url: 'https://techcrunch.com/category/artificial-intelligence/', date: new Date().getTime() - 2 * 3600 * 1000, summary: 'OpenAI 最新模型在图像理解和代码生成方面取得突破性进展。', tag: 'AI' },
    { title: 'Adobe Firefly 视频模型更新，支持 4K 输出', source: 'The Verge', logo: 'TV', url: 'https://www.theverge.com/ai-artificial-intelligence', date: new Date().getTime() - 5 * 3600 * 1000, summary: 'Adobe 正式发布 Firefly Video 2.0，支持 4K 分辨率视频生成。', tag: 'Tech' },
    { title: 'Figma AI 新增 Design Review 智能审查功能', source: 'MIT Tech', logo: 'MIT', url: 'https://www.technologyreview.com', date: new Date().getTime() - 24 * 3600 * 1000, summary: 'Figma 推出 AI 驱动的设计审查工具，可自动检测可用性问题。', tag: 'Research' },
    { title: 'Midjourney V7 Alpha 发布，写实风格再进化', source: 'Ars Technica', logo: 'ARS', url: 'https://arstechnica.com/tag/ai/', date: new Date().getTime() - 26 * 3600 * 1000, summary: 'Midjourney 最新版本在人物肖像和场景渲染方面达到新高度。', tag: 'AI' },
    { title: '苹果发布 Liquid Glass Design Kit 设计系统', source: 'VentureBeat', logo: 'VB', url: 'https://venturebeat.com/category/ai/', date: new Date().getTime() - 48 * 3600 * 1000, summary: 'Apple 推出全新玻璃质感设计语言，适配 visionOS 和 iOS 19。', tag: 'Tech' },
    { title: 'Stable Diffusion 3.5 开源，生成质量媲美闭源模型', source: '机器之心', logo: '机器', url: 'https://www.jiqizhixin.com', date: new Date().getTime() - 3 * 3600 * 1000, summary: 'Stability AI 发布 SD 3.5，在文字渲染和构图方面大幅提升。', tag: 'AI' },
    { title: 'Runway Gen-4 视频生成模型亮相，时长突破 40 秒', source: '量子位', logo: '量子', url: 'https://www.qbitai.com', date: new Date().getTime() - 8 * 3600 * 1000, summary: 'Runway 最新模型支持更长视频生成，运动一致性显著改善。', tag: 'AI' },
    { title: 'Canva 推出 Magic Studio AI 套件，覆盖全设计流程', source: 'TechCrunch', logo: 'TC', url: 'https://techcrunch.com/category/artificial-intelligence/', date: new Date().getTime() - 12 * 3600 * 1000, summary: 'Canva 整合 AI 功能到设计全流程，从文案到排版一键完成。', tag: 'AI' }
  ];

  // 默认配图（用于 Featured 条目）
  var DEFAULT_IMAGES = [
    'images/dribbble/ai-design-1.jpg',
    'images/dribbble/ai-design-2.jpg',
    'images/dribbble/ai-design-3.jpg',
    'images/dribbble/ai-design-4.jpg',
    'images/dribbble/ai-design-5.jpg'
  ];

  // 工具函数
  function now() { return Date.now(); }

  function esc(s) {
    return (s || '').replace(/[&<>"']/g, function (m) {
      return { '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;' }[m];
    });
  }

  function timeAgo(ts) {
    var diff = Math.floor((now() - ts) / 1000);
    if (diff < 60) return '刚刚';
    if (diff < 3600) return Math.floor(diff / 60) + '分钟前';
    if (diff < 86400) return Math.floor(diff / 3600) + '小时前';
    if (diff < 172800) return '昨天';
    return Math.floor(diff / 86400) + '天前';
  }

  function isNew(ts) {
    return (now() - ts) < 24 * 3600 * 1000;
  }

  function getDefaultImage(index) {
    return DEFAULT_IMAGES[index % DEFAULT_IMAGES.length];
  }

  // 从 rss2json API 获取单个 RSS 源
  function fetchRss(source) {
    var apiUrl = 'https://api.rss2json.com/v1/api.json?rss_url=' + encodeURIComponent(source.url) + '&count=3';
    return new Promise(function (resolve) {
      var xhr = new XMLHttpRequest();
      xhr.open('GET', apiUrl, true);
      xhr.timeout = 15000;
      xhr.onreadystatechange = function () {
        if (xhr.readyState !== 4) return;
        if (xhr.status === 200) {
          try {
            var data = JSON.parse(xhr.responseText);
            if (data.status === 'ok' && data.items) {
              var items = data.items.slice(0, 3).map(function (item) {
                // 尝试提取图片
                var img = '';
                if (item.thumbnail) img = item.thumbnail;
                else if (item.enclosure && item.enclosure.link) img = item.enclosure.link;
                else {
                  // 从 description 中提取第一个 img src
                  var m = item.description && item.description.match(/<img[^>]+src=["']([^"']+)["']/i);
                  if (m) img = m[1];
                }
                return {
                  title: item.title,
                  source: source.name,
                  logo: source.logo,
                  url: item.link,
                  date: new Date(item.pubDate).getTime(),
                  summary: item.description ? item.description.replace(/<[^>]+>/g, '').substring(0, 120) + '...' : '',
                  type: source.type,
                  tag: source.tag,
                  image: img
                };
              });
              resolve(items);
              return;
            }
          } catch (e) {}
        }
        resolve([]);
      };
      xhr.onerror = function () { resolve([]); };
      xhr.ontimeout = function () { resolve([]); };
      xhr.send();
    });
  }

  // 获取所有新闻（带缓存）
  window.fetchAiNews = function () {
    return new Promise(function (resolve) {
      // 检查缓存
      try {
        var cached = localStorage.getItem(CACHE_KEY);
        if (cached) {
          var data = JSON.parse(cached);
          if (data.ts && (now() - data.ts) < CACHE_TTL) {
            resolve(data.news);
            return;
          }
        }
      } catch (e) {}

      // 并行获取所有 RSS 源
      var promises = RSS_SOURCES.map(fetchRss);
      Promise.all(promises).then(function (results) {
        var allNews = [];
        results.forEach(function (items) {
          allNews = allNews.concat(items);
        });

        // 按时间排序，取最新
        allNews.sort(function (a, b) { return b.date - a.date; });
        allNews = allNews.slice(0, MAX_NEWS);

        // 如果获取不到足够新闻，补充兜底
        if (allNews.length < 5) {
          var needed = MAX_NEWS - allNews.length;
          var fallback = FALLBACK_NEWS.slice(0, needed);
          // 去重（按标题）
          var existingTitles = {};
          allNews.forEach(function (n) { existingTitles[n.title] = true; });
          fallback.forEach(function (n) {
            if (!existingTitles[n.title]) {
              allNews.push(n);
              existingTitles[n.title] = true;
            }
          });
          allNews.sort(function (a, b) { return b.date - a.date; });
          allNews = allNews.slice(0, MAX_NEWS);
        }

        // 写入缓存
        try {
          localStorage.setItem(CACHE_KEY, JSON.stringify({ ts: now(), news: allNews }));
        } catch (e) {}

        resolve(allNews);
      });
    });
  };

  // 渲染新闻列表到 DOM
  window.renderAiNews = function (news) {
    var container = document.getElementById('aiNewsList');
    var countEl = document.getElementById('aiNewsCount');
    if (!container) return;

    if (!news || !news.length) {
      container.innerHTML = '<div class="ainews-empty">暂无最新资讯</div>';
      if (countEl) countEl.textContent = '';
      return;
    }

    if (countEl) countEl.textContent = news.length;

    var html = '';
    news.forEach(function (item, index) {
      var isFirst = index === 0;
      var newBadge = isNew(item.date) ? '<span class="ainews-new">NEW</span>' : '';
      var tagDotClass = isNew(item.date) ? 'ainews-tag-dot ainews-tag-dot--new' : 'ainews-tag-dot';
      var timeStr = timeAgo(item.date);
      var metaLine = '<span class="ainews-meta-source">' + esc(item.source) + '</span><span class="ainews-meta-sep">·</span><span class="ainews-meta-time">' + timeStr + '</span>';
      var imgSrc = item.image || getDefaultImage(index);

      if (isFirst) {
        // Featured 第一条：左图右文
        html += '<a class="ainews-featured" href="' + esc(item.url) + '" target="_blank" rel="noopener noreferrer">' +
          '<div class="ainews-featured-img-wrap">' +
            '<img class="ainews-featured-img" src="' + esc(imgSrc) + '" alt="" loading="lazy" onerror="this.style.display=\'none\'" />' +
          '</div>' +
          '<div class="ainews-featured-body">' +
            '<div class="ainews-featured-tag">' +
              '<span class="' + tagDotClass + '"></span>' +
              '<span>' + esc(item.tag || 'AI') + '</span>' +
            '</div>' +
            '<h4 class="ainews-featured-title">' + esc(item.title) + newBadge + '</h4>' +
            '<p class="ainews-featured-summary">' + esc(item.summary || '') + '</p>' +
            '<div class="ainews-featured-meta">' + metaLine + '</div>' +
          '</div>' +
        '</a>';
      } else {
        // 普通条目：左文右图
        html += '<a class="ainews-item" href="' + esc(item.url) + '" target="_blank" rel="noopener noreferrer">' +
          '<div class="ainews-item-main">' +
            '<div class="ainews-item-tagline">' +
              '<span class="' + tagDotClass + '"></span>' +
              '<span class="ainews-item-tag">' + esc(item.tag || 'AI') + '</span>' +
            '</div>' +
            '<h4 class="ainews-item-title">' + esc(item.title) + '</h4>' +
            '<div class="ainews-item-meta">' + metaLine + '</div>' +
          '</div>' +
          '<div class="ainews-item-thumb">' +
            '<img class="ainews-item-thumb-img" src="' + esc(imgSrc) + '" alt="" loading="lazy" onerror="this.style.display=\'none\'" />' +
          '</div>' +
        '</a>';
      }
    });

    container.innerHTML = html;
  };

  // 初始化（页面加载时自动执行）
  window.initAiNews = function () {
    var container = document.getElementById('aiNewsList');
    if (!container) return;
    container.innerHTML = '<div class="ainews-loading">正在加载最新资讯...</div>';
    window.fetchAiNews().then(window.renderAiNews);
  };
})();
