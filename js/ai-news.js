/**
 * ai-news.js — AI Design News 三区块布局
 *
 * 信息来源（RSS）：
 *   - TechCrunch AI / The Verge AI / MIT Tech Review / Ars Technica
 *   - VentureBeat AI / 机器之心 / 量子位
 *
 * 布局（单卡片内三区块）：
 *   ├─ 快讯（1条最新，一行紧凑）
 *   ├─ 今日必读（3条精选，编号+来源图标）
 *   └─ 瀑布流资讯（其余全部，可滚动列表）
 */
(function () {
  'use strict';

  var CACHE_KEY = 'ross_ai_news_cache_v2';
  var CACHE_TTL = 6 * 60 * 60 * 1000; // 6 小时
  var MAX_NEWS = 18;

  // RSS 源配置
  var RSS_SOURCES = [
    { name: 'TechCrunch', url: 'https://techcrunch.com/category/artificial-intelligence/feed/', logo: 'TC', type: 'en', tag: 'AI' },
    { name: 'The Verge', url: 'https://www.theverge.com/rss/index.xml', logo: 'TV', type: 'en', tag: 'Tech' },
    { name: 'MIT Tech', url: 'https://www.technologyreview.com/feed/', logo: 'MIT', type: 'en', tag: 'Research' },
    { name: 'Ars Technica', url: 'https://arstechnica.com/tag/ai/feed/', logo: 'ARS', type: 'en', tag: 'AI' },
    { name: 'VentureBeat', url: 'https://venturebeat.com/category/ai/feed/', logo: 'VB', type: 'en', tag: 'AI' },
    { name: '36氪', url: 'https://36kr.com/feed', logo: '36氪', type: 'cn', tag: 'Tech' },
    { name: '量子位', url: 'https://www.qbitai.com/feed', logo: '量子', type: 'cn', tag: 'AI' }
  ];

  // 兜底静态新闻
  var FALLBACK_NEWS = [
    { title: 'OpenAI 发布 GPT-5 预览版，多模态能力大幅提升', source: 'TechCrunch', logo: 'TC', url: 'https://techcrunch.com/category/artificial-intelligence/', date: new Date().getTime() - 2 * 3600 * 1000, summary: 'OpenAI 最新模型在图像理解和代码生成方面取得突破性进展。', tag: 'AI' },
    { title: 'Adobe Firefly 视频模型更新，支持 4K 输出', source: 'The Verge', logo: 'TV', url: 'https://www.theverge.com/ai-artificial-intelligence', date: new Date().getTime() - 5 * 3600 * 1000, summary: 'Adobe 正式发布 Firefly Video 2.0，支持 4K 分辨率视频生成。', tag: 'Tech' },
    { title: 'Figma AI 新增 Design Review 智能审查功能', source: 'MIT Tech', logo: 'MIT', url: 'https://www.technologyreview.com', date: new Date().getTime() - 24 * 3600 * 1000, summary: 'Figma 推出 AI 驱动的设计审查工具，可自动检测可用性问题。', tag: 'Research' },
    { title: 'Midjourney V7 Alpha 发布，写实风格再进化', source: 'Ars Technica', logo: 'ARS', url: 'https://arstechnica.com/tag/ai/', date: new Date().getTime() - 26 * 3600 * 1000, summary: 'Midjourney 最新版本在人物肖像和场景渲染方面达到新高度。', tag: 'AI' },
    { title: '苹果发布 Liquid Glass Design Kit 设计系统', source: 'VentureBeat', logo: 'VB', url: 'https://venturebeat.com/category/ai/', date: new Date().getTime() - 48 * 3600 * 1000, summary: 'Apple 推出全新玻璃质感设计语言，适配 visionOS 和 iOS 19。', tag: 'Tech' },
    { title: 'Stable Diffusion 3.5 开源，生成质量媲美闭源模型', source: '36氪', logo: '36氪', url: 'https://36kr.com', date: new Date().getTime() - 3 * 3600 * 1000, summary: 'Stability AI 发布 SD 3.5，在文字渲染和构图方面大幅提升。', tag: 'AI' },
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

  // 获取来源首字母/首字
  function getSourceInitial(source) {
    if (!source) return '?';
    var first = source.charAt(0);
    if (/[\u4e00-\u9fa5]/.test(first)) return first;
    return first.toUpperCase();
  }

  // 从 rss2json API 获取单个 RSS 源
  function fetchRss(source) {
    var apiUrl = 'https://api.rss2json.com/v1/api.json?rss_url=' + encodeURIComponent(source.url);
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
                if (item.thumbnail) img = item.thumbnail;
                else if (item.enclosure && item.enclosure.link) img = item.enclosure.link;
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
  window.fetchAiNews = function (forceRefresh) {
    return new Promise(function (resolve) {
      if (!forceRefresh) {
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
      }

      var promises = RSS_SOURCES.map(fetchRss);
      Promise.all(promises).then(function (results) {
        var allNews = [];
        results.forEach(function (items) { allNews = allNews.concat(items); });
        allNews.sort(function (a, b) { return b.date - a.date; });
        allNews = allNews.slice(0, MAX_NEWS);

        if (allNews.length < 6) {
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

  // ========== 渲染区块 ==========

  // 快讯（1条）
  function renderFlashHTML(item) {
    var timeStr = timeAgo(item.date);
    var newBadge = isNew(item.date) ? '<span class="ainews-new">NEW</span>' : '';
    return '<a class="ainews-flash" href="' + esc(item.url) + '" target="_blank" rel="noopener noreferrer">' +
      '<span class="ainews-flash-label">\u5feb\u8baf</span>' +
      '<span class="ainews-flash-time">' + timeStr + '</span>' +
      '<span class="ainews-flash-title">' + esc(item.title) + newBadge + '</span>' +
    '</a>';
  }

  // 今日必读单条
  function renderMustReadHTML(item, index) {
    var num = (index + 1) < 10 ? '0' + (index + 1) : String(index + 1);
    return '<a class="ainews-mustread-item" href="' + esc(item.url) + '" target="_blank" rel="noopener noreferrer">' +
      '<span class="ainews-mustread-num">' + num + '</span>' +
      '<span class="ainews-mustread-title">' + esc(item.title) + '</span>' +
    '</a>';
  }

  // 瀑布流单条
  function renderWaterfallHTML(item) {
    var timeStr = timeAgo(item.date);
    var newBadge = isNew(item.date) ? '<span class="ainews-new">NEW</span>' : '';
    return '<a class="ainews-waterfall-item" href="' + esc(item.url) + '" target="_blank" rel="noopener noreferrer">' +
      '<div class="ainews-waterfall-main">' +
        '<h4 class="ainews-waterfall-title">' + esc(item.title) + newBadge + '</h4>' +
        '<div class="ainews-waterfall-meta">' +
          '<span class="ainews-meta-source">' + esc(item.source) + '</span>' +
          '<span class="ainews-meta-sep">\u00b7</span>' +
          '<span class="ainews-meta-time">' + timeStr + '</span>' +
        '</div>' +
      '</div>' +
    '</a>';
  }

  // 主渲染函数
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

    // 数据分三块
    var flash = news[0];
    var mustRead = news.slice(1, 4);
    var waterfall = news.slice(4);

    var html = '';

    // === 快讯 ===
    html += '<div class="ainews-section ainews-section--flash">';
    html += renderFlashHTML(flash);
    html += '</div>';

    // === 今日必读 ===
    if (mustRead.length) {
      html += '<div class="ainews-divider"></div>';
      html += '<div class="ainews-section ainews-section--mustread">';
      html += '<div class="ainews-section-header">';
      html += '<span class="ainews-section-title">\u4eca\u65e5\u5fc5\u8bfb</span>';
      html += '</div>';
      html += '<div class="ainews-mustread-list">';
      mustRead.forEach(function (item, i) {
        html += renderMustReadHTML(item, i);
      });
      html += '</div>';
      html += '</div>';
    }

    // === 瀑布流资讯 ===
    if (waterfall.length) {
      html += '<div class="ainews-divider"></div>';
      html += '<div class="ainews-section ainews-section--waterfall">';
      html += '<div class="ainews-section-header">';
      html += '<span class="ainews-section-title">\u7011\u5e03\u6d41\u8d44\u8baf</span>';
      html += '</div>';
      html += '<div class="ainews-waterfall-list">';
      waterfall.forEach(function (item) {
        html += renderWaterfallHTML(item);
      });
      html += '</div>';
      html += '</div>';
    }

    container.innerHTML = html;
  };

  // 初始化
  window.initAiNews = function () {
    var container = document.getElementById('aiNewsList');
    if (!container) return;
    container.innerHTML = '<div class="ainews-loading">\u6b63\u5728\u52a0\u8f7d\u6700\u65b0\u8d44\u8baf...</div>';
    window.fetchAiNews().then(window.renderAiNews);
  };
})();
