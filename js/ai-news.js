/**
 * ai-news.js — AI Design News 数据获取与渲染
 *
 * 信息来源（RSS）：
 *   - TechCrunch AI
 *   - The Verge AI
 *   - MIT Tech Review
 *   - Ars Technica
 *   - VentureBeat AI
 *   - 机器之心
 *   - 量子位
 *
 * 技术方案：
 *   - rss2json.com 免费 API（CORS 支持）
 *   - localStorage 缓存 6 小时
 *   - 失败时回退到内置静态新闻
 *   - 每页 6 条（1 Featured + 5 普通），整页翻页，10s 自动切换
 */
(function () {
  'use strict';

  var CACHE_KEY = 'ross_ai_news_cache';
  var CACHE_TTL = 6 * 60 * 60 * 1000; // 6 小时
  var MAX_NEWS = 18;                  // 3 页 × 6 条
  var PER_PAGE = 6;                   // 每页 6 条（1 主 + 5 次）
  var CAROUSEL_INTERVAL = 10000;      // 10 秒
  var FLIP_DURATION = 900;            // 翻页动画时长 ms

  var carouselTimer = null;
  var carouselCurrent = 0;
  var carouselPageCount = 1;

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

  // 兜底静态新闻（无配图，由渲染时自动生成占位图）
  var FALLBACK_NEWS = [
    { title: 'OpenAI 发布 GPT-5 预览版，多模态能力大幅提升', source: 'TechCrunch', logo: 'TC', url: 'https://techcrunch.com/category/artificial-intelligence/', date: new Date().getTime() - 2 * 3600 * 1000, summary: 'OpenAI 最新模型在图像理解和代码生成方面取得突破性进展。', tag: 'AI' },
    { title: 'Adobe Firefly 视频模型更新，支持 4K 输出', source: 'The Verge', logo: 'TV', url: 'https://www.theverge.com/ai-artificial-intelligence', date: new Date().getTime() - 5 * 3600 * 1000, summary: 'Adobe 正式发布 Firefly Video 2.0，支持 4K 分辨率视频生成。', tag: 'Tech' },
    { title: 'Figma AI 新增 Design Review 智能审查功能', source: 'MIT Tech', logo: 'MIT', url: 'https://www.technologyreview.com', date: new Date().getTime() - 24 * 3600 * 1000, summary: 'Figma 推出 AI 驱动的设计审查工具，可自动检测可用性问题。', tag: 'Research' },
    { title: 'Midjourney V7 Alpha 发布，写实风格再进化', source: 'Ars Technica', logo: 'ARS', url: 'https://arstechnica.com/tag/ai/', date: new Date().getTime() - 26 * 3600 * 1000, summary: 'Midjourney 最新版本在人物肖像和场景渲染方面达到新高度。', tag: 'AI' },
    { title: '苹果发布 Liquid Glass Design Kit 设计系统', source: 'VentureBeat', logo: 'VB', url: 'https://venturebeat.com/category/ai/', date: new Date().getTime() - 48 * 3600 * 1000, summary: 'Apple 推出全新玻璃质感设计语言，适配 visionOS 和 iOS 19。', tag: 'Tech' },
    { title: 'Stable Diffusion 3.5 开源，生成质量媲美闭源模型', source: '机器之心', logo: '机器', url: 'https://www.jiqizhixin.com', date: new Date().getTime() - 3 * 3600 * 1000, summary: 'Stability AI 发布 SD 3.5，在文字渲染和构图方面大幅提升。', tag: 'AI' },
    { title: 'Runway Gen-4 视频生成模型亮相，时长突破 40 秒', source: '量子位', logo: '量子', url: 'https://www.qbitai.com', date: new Date().getTime() - 8 * 3600 * 1000, summary: 'Runway 最新模型支持更长视频生成，运动一致性显著改善。', tag: 'AI' },
    { title: 'Canva 推出 Magic Studio AI 套件，覆盖全设计流程', source: 'TechCrunch', logo: 'TC', url: 'https://techcrunch.com/category/artificial-intelligence/', date: new Date().getTime() - 12 * 3600 * 1000, summary: 'Canva 整合 AI 功能到设计全流程，从文案到排版一键完成。', tag: 'AI' },
    { title: 'Google DeepMind 推出新架构，推理效率提升 3 倍', source: 'MIT Tech', logo: 'MIT', url: 'https://www.technologyreview.com', date: new Date().getTime() - 18 * 3600 * 1000, summary: 'DeepMind 新架构在保持准确率的同时大幅降低推理成本。', tag: 'Research' },
    { title: 'Anthropic Claude 4 发布，支持 200K 上下文窗口', source: 'The Verge', logo: 'TV', url: 'https://www.theverge.com/ai-artificial-intelligence', date: new Date().getTime() - 20 * 3600 * 1000, summary: 'Claude 4 在代码理解和长文档分析方面表现卓越。', tag: 'Tech' },
    { title: 'Meta AI 发布视频生成工具，支持实时编辑', source: 'Ars Technica', logo: 'ARS', url: 'https://arstechnica.com/tag/ai/', date: new Date().getTime() - 28 * 3600 * 1000, summary: 'Meta 新工具允许用户在视频生成过程中实时调整风格和场景。', tag: 'AI' },
    { title: 'Notion AI 升级，支持多页面智能关联分析', source: 'VentureBeat', logo: 'VB', url: 'https://venturebeat.com/category/ai/', date: new Date().getTime() - 36 * 3600 * 1000, summary: 'Notion 新功能可以跨页面分析内容，自动生成知识图谱。', tag: 'AI' }
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
    if (diff < 60) return '\u521a\u521a';
    if (diff < 3600) return Math.floor(diff / 60) + '\u5206\u949f\u524d';
    if (diff < 86400) return Math.floor(diff / 3600) + '\u5c0f\u65f6\u524d';
    if (diff < 172800) return '\u6628\u5929';
    return Math.floor(diff / 86400) + '\u5929\u524d';
  }

  function isNew(ts) {
    return (now() - ts) < 24 * 3600 * 1000;
  }

  // 根据字符串生成一致的 HSL 颜色
  function hashColor(str) {
    var hash = 0;
    for (var i = 0; i < (str || '').length; i++) {
      hash = str.charCodeAt(i) + ((hash << 5) - hash);
    }
    var h = Math.abs(hash) % 360;
    return 'hsl(' + h + ', 72%, 58%)';
  }

  // 自动生成 SVG 占位图（data URI）
  function generatePlaceholder(source, title) {
    var text = (source || title || '?').charAt(0).toUpperCase();
    var color = hashColor(source || title);
    var svg = '<svg xmlns="http://www.w3.org/2000/svg" width="200" height="130"><rect width="100%" height="100%" fill="' + color + '" rx="8"/><text x="50%" y="50%" dominant-baseline="middle" text-anchor="middle" font-size="64" fill="#fff" font-family="system-ui,-apple-system,sans-serif" font-weight="700">' + text + '</text></svg>';
    return 'data:image/svg+xml;utf8,' + encodeURIComponent(svg);
  }

  // 获取图片：优先真实配图，无则自动生成占位图
  function getImage(item) {
    if (item.image && item.image.trim()) return item.image;
    return generatePlaceholder(item.source, item.title);
  }

  // 从 rss2json API 获取单个 RSS 源
  function fetchRss(source) {
    var apiUrl = 'https://api.rss2json.com/v1/api.json?rss_url=' + encodeURIComponent(source.url) + '&count=4';
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
              var items = data.items.slice(0, 4).map(function (item) {
                var img = '';
                // 1. thumbnail
                if (item.thumbnail) img = item.thumbnail;
                // 2. enclosure
                else if (item.enclosure && item.enclosure.link) img = item.enclosure.link;
                // 3. description 中第一张图
                else {
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

      var promises = RSS_SOURCES.map(fetchRss);
      Promise.all(promises).then(function (results) {
        var allNews = [];
        results.forEach(function (items) { allNews = allNews.concat(items); });
        allNews.sort(function (a, b) { return b.date - a.date; });
        allNews = allNews.slice(0, MAX_NEWS);

        // 补充到至少 PER_PAGE 条
        if (allNews.length < PER_PAGE) {
          var existingTitles = {};
          allNews.forEach(function (n) { existingTitles[n.title] = true; });
          for (var i = 0; i < FALLBACK_NEWS.length && allNews.length < MAX_NEWS; i++) {
            if (!existingTitles[FALLBACK_NEWS[i].title]) {
              allNews.push(FALLBACK_NEWS[i]);
              existingTitles[FALLBACK_NEWS[i].title] = true;
            }
          }
          allNews.sort(function (a, b) { return b.date - a.date; });
          allNews = allNews.slice(0, MAX_NEWS);
        }

        try {
          localStorage.setItem(CACHE_KEY, JSON.stringify({ ts: now(), news: allNews }));
        } catch (e) {}

        resolve(allNews);
      });
    });
  };

  // 渲染单条普通条目 HTML
  function renderItemHTML(item) {
    var newBadge = isNew(item.date) ? '<span class="ainews-new">NEW</span>' : '';
    var tagDotClass = isNew(item.date) ? 'ainews-tag-dot ainews-tag-dot--new' : 'ainews-tag-dot';
    var timeStr = timeAgo(item.date);
    var metaLine = '<span class="ainews-meta-source">' + esc(item.source) + '</span><span class="ainews-meta-sep">\u00b7</span><span class="ainews-meta-time">' + timeStr + '</span>';
    var imgSrc = getImage(item);

    return '<a class="ainews-item" href="' + esc(item.url) + '" target="_blank" rel="noopener noreferrer">' +
      '<div class="ainews-item-main">' +
        '<div class="ainews-item-tagline">' +
          '<span class="' + tagDotClass + '"></span>' +
          '<span class="ainews-item-tag">' + esc(item.tag || 'AI') + '</span>' +
        '</div>' +
        '<h4 class="ainews-item-title">' + esc(item.title) + newBadge + '</h4>' +
        '<div class="ainews-item-meta">' + metaLine + '</div>' +
      '</div>' +
      '<div class="ainews-item-thumb">' +
        '<img class="ainews-item-thumb-img" src="' + esc(imgSrc) + '" alt="" loading="lazy" />' +
      '</div>' +
    '</a>';
  }

  // 渲染单页 HTML（1 Featured + 5 普通）
  function renderPageHTML(pageNews, pageIdx) {
    if (!pageNews || !pageNews.length) return '';

    var featured = pageNews[0];
    var fNewBadge = isNew(featured.date) ? '<span class="ainews-new">NEW</span>' : '';
    var fTagDotClass = isNew(featured.date) ? 'ainews-tag-dot ainews-tag-dot--new' : 'ainews-tag-dot';
    var fTimeStr = timeAgo(featured.date);
    var fMetaLine = '<span class="ainews-meta-source">' + esc(featured.source) + '</span><span class="ainews-meta-sep">\u00b7</span><span class="ainews-meta-time">' + fTimeStr + '</span>';
    var fImgSrc = getImage(featured);

    var html = '<a class="ainews-featured" href="' + esc(featured.url) + '" target="_blank" rel="noopener noreferrer">' +
      '<div class="ainews-featured-img-wrap">' +
        '<img class="ainews-featured-img" src="' + esc(fImgSrc) + '" alt="" loading="eager" />' +
      '</div>' +
      '<div class="ainews-featured-body">' +
        '<div class="ainews-featured-tag">' +
          '<span class="' + fTagDotClass + '"></span>' +
          '<span>' + esc(featured.tag || 'AI') + '</span>' +
        '</div>' +
        '<h4 class="ainews-featured-title">' + esc(featured.title) + fNewBadge + '</h4>' +
        '<p class="ainews-featured-summary">' + esc(featured.summary || '') + '</p>' +
        '<div class="ainews-featured-meta">' + fMetaLine + '</div>' +
      '</div>' +
    '</a>';

    // 第 2-6 条普通条目
    for (var i = 1; i < pageNews.length; i++) {
      html += renderItemHTML(pageNews[i]);
    }

    return html;
  }

  // 翻页到指定页
  function flipTo(pageEls, dots, pageCounter, targetIdx) {
    if (targetIdx === carouselCurrent) return;

    var oldEl = pageEls[carouselCurrent];
    var newEl = pageEls[targetIdx];
    if (!oldEl || !newEl) return;

    oldEl.classList.remove('active');
    newEl.classList.add('active');

    // Update dots
    dots.forEach(function (d, i) {
      d.classList.toggle('active', i === targetIdx);
    });

    carouselCurrent = targetIdx;

    if (pageCounter) {
      pageCounter.textContent = (carouselCurrent + 1) + ' / ' + carouselPageCount;
    }
  }

  // 渲染新闻到 DOM
  window.renderAiNews = function (news) {
    var container = document.getElementById('aiNewsList');
    var countEl = document.getElementById('aiNewsCount');
    if (!container) return;

    if (!news || !news.length) {
      container.innerHTML = '<div class="ainews-empty">\u6682\u65e0\u6700\u65b0\u8d44\u8baf</div>';
      if (countEl) countEl.textContent = '';
      return;
    }

    if (countEl) countEl.textContent = news.length;

    // 分页：每页 PER_PAGE 条
    var pages = [];
    for (var i = 0; i < news.length; i += PER_PAGE) {
      pages.push(news.slice(i, i + PER_PAGE));
    }
    carouselPageCount = pages.length;

    var html = '<div class="ainews-carousel">';
    html += '<div class="ainews-carousel-stage" id="aiNewsCarousel">';

    pages.forEach(function (page, pi) {
      var activeClass = pi === 0 ? ' active' : '';
      html += '<div class="ainews-carousel-page' + activeClass + '" data-page="' + pi + '">';
      html += renderPageHTML(page, pi);
      html += '</div>';
    });

    html += '</div>'; // .ainews-carousel-stage

    // 指示器
    if (carouselPageCount > 1) {
      html += '<div class="ainews-carousel-dots" id="aiNewsDots">';
      for (var d = 0; d < carouselPageCount; d++) {
        html += '<button class="ainews-dot' + (d === 0 ? ' active' : '') + '" data-idx="' + d + '" type="button" aria-label="\u7b2c' + (d + 1) + '\u9875"></button>';
      }
      html += '</div>';
      html += '<span class="ainews-carousel-page-num" id="aiNewsPage">1 / ' + carouselPageCount + '</span>';
    }

    html += '</div>'; // .ainews-carousel

    container.innerHTML = html;

    // 多页时才启动轮播
    if (carouselPageCount <= 1) return;

    var pageEls = container.querySelectorAll('.ainews-carousel-page');
    var dots = container.querySelectorAll('#aiNewsDots .ainews-dot');
    var pageCounter = document.getElementById('aiNewsPage');
    carouselCurrent = 0;

    // 清除旧定时器
    if (carouselTimer) clearInterval(carouselTimer);

    // 自动轮播
    carouselTimer = setInterval(function () {
      var next = (carouselCurrent + 1) % carouselPageCount;
      flipTo(pageEls, dots, pageCounter, next);
    }, CAROUSEL_INTERVAL);

    // 点击小圆点切换
    dots.forEach(function (dot) {
      dot.addEventListener('click', function () {
        var idx = parseInt(dot.getAttribute('data-idx'));
        if (idx !== carouselCurrent) {
          if (carouselTimer) clearInterval(carouselTimer);
          flipTo(pageEls, dots, pageCounter, idx);
          carouselTimer = setInterval(function () {
            var n = (carouselCurrent + 1) % carouselPageCount;
            flipTo(pageEls, dots, pageCounter, n);
          }, CAROUSEL_INTERVAL);
        }
      });
    });
  };

  // 初始化
  window.initAiNews = function () {
    var container = document.getElementById('aiNewsList');
    if (!container) return;
    container.innerHTML = '<div class="ainews-loading">\u6b63\u5728\u52a0\u8f7d\u6700\u65b0\u8d44\u8baf...</div>';
    window.fetchAiNews().then(window.renderAiNews);
  };
})();
