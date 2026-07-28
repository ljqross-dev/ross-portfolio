// Ross Luo 作品集 — 交互脚本
(function () {
  'use strict';
  var P = window.PROJECTS || [];

  /* 主题切换 */
  (function theme() {
    var t = document.querySelector('[data-theme-toggle]');
    var r = document.documentElement;
    var d = matchMedia('(prefers-color-scheme:dark)').matches ? 'dark' : 'light';
    r.setAttribute('data-theme', d);
    function render() {
      var isDark = r.getAttribute('data-theme') === 'dark';
      if (t) {
        t.innerHTML = isDark
          ? '<svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="12" cy="12" r="4"/><path d="M12 2v2M12 20v2M4.9 4.9l1.4 1.4M17.7 17.7l1.4 1.4M2 12h2M20 12h2M4.9 19.1l1.4-1.4M17.7 6.3l1.4-1.4"/></svg>'
          : '<svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M21 12.8A9 9 0 1 1 11.2 3 7 7 0 0 0 21 12.8z"/></svg>';
        t.setAttribute('aria-label', isDark ? '切换到浅色模式' : '切换到深色模式');
      }
    }
    render();
    if (t) t.addEventListener('click', function () {
      d = r.getAttribute('data-theme') === 'dark' ? 'light' : 'dark';
      r.setAttribute('data-theme', d);
      render();
    });
  })();

  /* 页头滚动状态 */
  (function header() {
    var h = document.getElementById('header');
    function onScroll() {
      if (window.scrollY > 8) h.classList.add('header--scrolled');
      else h.classList.remove('header--scrolled');
    }
    onScroll();
    window.addEventListener('scroll', onScroll, { passive: true });
  })();

  /* 移动端菜单 */
  (function menu() {
    var btn = document.getElementById('menuToggle');
    var nav = document.getElementById('nav');
    if (!btn || !nav) return;
    btn.addEventListener('click', function () {
      var open = nav.classList.toggle('open');
      btn.setAttribute('aria-expanded', open ? 'true' : 'false');
    });
    nav.querySelectorAll('a').forEach(function (a) {
      a.addEventListener('click', function () {
        nav.classList.remove('open');
        btn.setAttribute('aria-expanded', 'false');
      });
    });
  })();

  /* 英雄缩略图 */
  (function heroThumbs() {
    var box = document.getElementById('heroThumbs');
    if (!box) return;
    var featured = P.slice(0, 3);
    box.innerHTML = featured.map(function (p, i) {
      return '<a href="#work" data-id="' + p.id + '" aria-label="' + esc(p.title) + '">' +
        '<img src="' + p.cover + '" alt="' + esc(p.title) + '封面" loading="' + (i === 0 ? 'eager' : 'lazy') + '" />' +
        '<span class="thumb-label">' + esc(p.catLabel) + '</span></a>';
    }).join('');
  })();

  /* 作品网格自适应列数：能一屏展示的卡片等比例铺满一行，不拉伸变形 */
  function layoutWorkGrid() {
    var grid = document.getElementById('workGrid');
    if (!grid) return;
    var vis = grid.querySelectorAll('.work-card:not([hidden])');
    var count = vis.length;
    if (!count) return;
    var w = window.innerWidth;
    var maxCols = w <= 560 ? 1 : (w <= 980 ? 2 : 3);
    var cols = Math.min(count, maxCols);
    grid.style.gridTemplateColumns = 'repeat(' + cols + ', 1fr)';
    var allBtn = document.querySelector('.filter-btn[data-filter="all"]');
    grid.classList.toggle('is-filtered', !(allBtn && allBtn.classList.contains('active')));
  }
  window.addEventListener('resize', layoutWorkGrid);

  /* 作品网格 */
  (function workGrid() {
    var grid = document.getElementById('workGrid');
    if (!grid) return;
    grid.innerHTML = P.map(function (p, i) {
      var featured = i < 3 ? ' featured' : '';
      return '<a class="work-card reveal' + featured + '" data-cat="' + p.cat + '" data-id="' + p.id + '" href="#work">' +
        '<div class="work-cover"><img src="' + p.cover + '" alt="' + esc(p.title) + '封面" loading="lazy" /></div>' +
        '<div class="work-body">' +
          '<span class="work-tag">' + esc(p.catLabel) + '</span>' +
          '<h3 class="work-title">' + esc(p.title) + '</h3>' +
          '<div class="work-meta"><span>' + esc(p.year) + '</span><span class="dot"></span><span>' + esc(p.fields.slice(0,2).join(' · ')) + '</span><span class="dot"></span><span>' + p.images.length + ' 图</span></div>' +
        '</div></a>';
    }).join('');
    layoutWorkGrid();
  })();

  /* 分类筛选 */
  (function filters() {
    var btns = document.querySelectorAll('.filter-btn');
    var cards = function () { return document.querySelectorAll('#workGrid .work-card'); };
    if (!btns.length) return;
    btns.forEach(function (btn) {
      btn.addEventListener('click', function () {
        btns.forEach(function (b) { b.classList.remove('active'); });
        btn.classList.add('active');
        var f = btn.getAttribute('data-filter');
        cards().forEach(function (c) {
          var match = f === 'all' || c.getAttribute('data-cat') === f;
          if (match) c.removeAttribute('hidden');
          else c.setAttribute('hidden', '');
        });
        layoutWorkGrid();
      });
    });
  })();

  /* 详情弹窗 */
  (function modal() {
    var modal = document.getElementById('modal');
    var body = document.getElementById('modalBody');
    var behance = document.getElementById('modalBehance');
    if (!modal || !body) return;
    var lastFocus = null;

    function open(id) {
      var p = P.find(function (x) { return x.id === id; });
      if (!p) return;
      lastFocus = document.activeElement;
      var fields = p.fields.map(esc).join(' · ');
      var tools = p.tools.length ? p.tools.map(esc).join('、') : '—';
      var desc = p.desc.split('\n').filter(Boolean).map(function (line) { return '<p>' + esc(line) + '</p>'; }).join('');
      var imgs = p.images.map(function (u, i) {
        return '<figure class="modal-fig"><img src="' + u + '" alt="' + esc(p.title) + ' 图 ' + (i + 1) + '" loading="' + (i < 2 ? 'eager' : 'lazy') + '" decoding="async" /></figure>';
      }).join('');

      body.innerHTML =
        '<div class="modal-intro">' +
          '<span class="work-tag">' + esc(p.catLabel) + '</span>' +
          '<h1 class="modal-title">' + esc(p.title) + '</h1>' +
          '<div class="modal-meta">' +
            '<div><dt>年份</dt><dd>' + esc(p.year) + '</dd></div>' +
            '<div><dt>发布</dt><dd>' + esc(p.date) + '</dd></div>' +
            '<div><dt>领域</dt><dd>' + fields + '</dd></div>' +
            '<div><dt>工具</dt><dd>' + tools + '</dd></div>' +
          '</div>' +
          (desc ? '<div class="modal-desc">' + desc + '</div>' : '') +
        '</div>' +
        '<div class="modal-gallery">' + imgs + '</div>';

      if (behance) behance.href = p.behance;
      modal.classList.add('open');
      modal.setAttribute('aria-hidden', 'false');
      document.body.style.overflow = 'hidden';
      modal.scrollTop = 0;
      setTimeout(function () { var f = modal.querySelector('.modal-back'); if (f) f.focus(); }, 50);
    }
    function close() {
      modal.classList.remove('open');
      modal.setAttribute('aria-hidden', 'true');
      document.body.style.overflow = '';
      if (lastFocus && lastFocus.focus) lastFocus.focus();
    }

    document.addEventListener('click', function (e) {
      var card = e.target.closest('[data-id]');
      if (card) {
        e.preventDefault();
        open(card.getAttribute('data-id'));
        return;
      }
      if (e.target.closest('[data-close]') || e.target === modal) close();
    });
    document.addEventListener('keydown', function (e) {
      if (e.key === 'Escape' && modal.classList.contains('open')) close();
    });
  })();

  /* ============================================================
     研习文章版块（Markdown 渲染）
     ============================================================ */
  var POSTS = window.POSTS || [];

  /* 日期解析：兼容「2026年5月19日」与「2026-05-13」两种格式 */
  function parseDateStr(s) {
    if (!s) return 0;
    var iso = String(s).match(/^(\d{4})-(\d{1,2})-(\d{1,2})$/);
    if (iso) return new Date(+iso[1], +iso[2] - 1, +iso[3]).getTime();
    var cn = String(s).match(/(\d{4})年(\d{1,2})月(\d{1,2})日/);
    if (cn) return new Date(+cn[1], +cn[2] - 1, +cn[3]).getTime();
    return 0;
  }

  /* 文章列表（按时间倒序，主/副卡片） */
  (function blogGrid() {
    var grid = document.getElementById('blogGrid');
    if (!grid) return;
    var sorted = POSTS.slice().sort(function (a, b) {
      return parseDateStr(b.date) - parseDateStr(a.date);
    });
    grid.innerHTML = sorted.map(function (a) {
      var size = a.size === 'main' ? 'main' : 'sub';
      var subcat = a.subcat ? a.subcat : '';
      var catLine = subcat ? esc(a.catLabel) + ' · ' + esc(subcat) : esc(a.catLabel);
      return '<button class="post-card reveal post-card--' + size + '" type="button" data-cat="' + a.cat + '" data-subcat="' + subcat + '" data-size="' + size + '" data-post-id="' + a.id + '" aria-label="阅读文章：' + esc(a.title) + '">' +
        '<span class="post-cat">' + catLine + '</span>' +
        '<h3>' + esc(a.title) + '</h3>' +
        '<p class="post-excerpt">' + esc(a.excerpt) + '</p>' +
        '<div class="post-meta"><span>' + esc(a.date) + '</span><span class="dot"></span><span>' + esc(a.readTime) + '</span>' +
        (a.url ? '<span class="dot"></span><span class="post-src">转载 · ' + esc(a.source === 'wechat' ? '公众号' : a.source) + '</span>' : '') +
        '<span class="post-read">阅读全文 <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><line x1="5" y1="12" x2="19" y2="12"/><polyline points="12 5 19 12 12 19"/></svg></span></div>' +
        '</button>';
    }).join('');
  })();

  /* 文章分类筛选（含公众号三级子分类） */
  (function blogFilters() {
    var topBtns = document.querySelectorAll('#blogFilters .filter-btn');
    var subBox = document.getElementById('blogSub');
    var subBtns = [];
    var activeTop = 'all';
    var activeSub = 'all';

    /* 一次性构建公众号子分类 tab（AI 创作 / 工具资源 / 设计思考 / Figma 实战） */
    if (subBox) {
      var subcats = [];
      POSTS.forEach(function (a) {
        if (a.cat === 'wechat' && a.subcat && subcats.indexOf(a.subcat) === -1) subcats.push(a.subcat);
      });
      var subHtml = '<button class="subfilter-btn active" data-subfilter="all" type="button">全部</button>';
      subHtml += subcats.map(function (s) {
        return '<button class="subfilter-btn" data-subfilter="' + s + '" type="button">' + s + '</button>';
      }).join('');
      subBox.innerHTML = subHtml;
      subBtns = subBox.querySelectorAll('.subfilter-btn');
      subBtns.forEach(function (b) {
        b.addEventListener('click', function () {
          subBtns.forEach(function (x) { x.classList.remove('active'); });
          b.classList.add('active');
          activeSub = b.getAttribute('data-subfilter');
          applyFilter();
        });
      });
    }

    function applyFilter() {
      document.querySelectorAll('#blogGrid .post-card').forEach(function (c) {
        var cat = c.getAttribute('data-cat');
        var sub = c.getAttribute('data-subcat');
        var show = true;
        if (activeTop === 'wechat') {
          show = cat === 'wechat';
          if (show && activeSub !== 'all') show = sub === activeSub;
        } else if (activeTop !== 'all') {
          show = cat === activeTop;
        }
        if (show) c.removeAttribute('hidden');
        else c.setAttribute('hidden', '');
      });
    }

    if (!topBtns.length) return;
    topBtns.forEach(function (btn) {
      btn.addEventListener('click', function () {
        topBtns.forEach(function (b) { b.classList.remove('active'); });
        btn.classList.add('active');
        activeTop = btn.getAttribute('data-bfilter');
        activeSub = 'all';
        if (subBtns.length) {
          subBtns.forEach(function (x) { x.classList.remove('active'); });
          var allBtn = subBox.querySelector('[data-subfilter="all"]');
          if (allBtn) allBtn.classList.add('active');
        }
        if (subBox) {
          if (activeTop === 'wechat') subBox.removeAttribute('hidden');
          else subBox.setAttribute('hidden', '');
        }
        applyFilter();
      });
    });
  })();

  /* 视频 / 动效 版块（自动播放，无须点击） */
  (function videoGrid() {
    var grid = document.getElementById('videoGrid');
    if (!grid || !window.VIDEOS) return;
    grid.innerHTML = window.VIDEOS.map(function (v) {
      return '<a class="video-card reveal" href="video.html?vid=' + v.id + '">' +
        '<div class="video-frame">' +
          '<video src="' + v.src + '" autoplay muted loop playsinline preload="metadata" aria-label="' + esc(v.title) + '"></video>' +
        '</div>' +
        '<div class="video-cap"><h3>' + esc(v.title) + '</h3><p>' + esc(v.caption) + '</p></div>' +
        '</a>';
    }).join('');
    grid.querySelectorAll('video').forEach(function (vid) {
      var p = vid.play();
      if (p && typeof p.catch === 'function') p.catch(function () {});
    });
    /* 关于我区域的个人动效视频，确保自动播放 */
    var av = document.querySelector('.about-video');
    if (av) {
      var pa = av.play();
      if (pa && typeof pa.catch === 'function') pa.catch(function () {});
    }
  })();

  /* 私域 · 小红书（分类筛选 + 分页，每页6条=2行） */
  (function xhsGrid() {
    var grid = document.getElementById('xhsGrid');
    var filterBox = document.getElementById('xFilters');
    var pageBox = document.getElementById('xhsPagination');
    if (!grid || !window.XHS) return;

    var NOTES = (window.XHS.notes || []).slice();
    var CATS = (window.XHS.categories || [{ id: 'all', label: '全部' }]);
    var PAGE_SIZE = 6; /* 3列 × 2行 */
    var curPage = 1;
    var activeCat = 'all';

    function eng(n) { return (n.likes || 0) + (n.collects || 0) + (n.comments || 0); }

    /* 排序：置顶(互动最高2篇) + 其余时间升序 */
    function getOrdered() {
      var filtered = activeCat === 'all' ? NOTES.slice() : NOTES.filter(function (n) { return n.cat === activeCat; });
      var pinnedIds = filtered.slice().sort(function (a, b) { return eng(b) - eng(a); }).slice(0, 2).map(function (n) { return n.id; });
      var pinned = filtered.filter(function (n) { return pinnedIds.indexOf(n.id) !== -1; });
      var rest = filtered.filter(function (n) { return pinnedIds.indexOf(n.id) === -1; })
        .sort(function (a, b) { return String(a.date) < String(b.date) ? -1 : 1; });
      return pinned.concat(rest);
    }

    function renderCard(n) {
      var isPin = false;
      var ordered = getOrdered();
      var top2 = ordered.slice(0, 2).map(function (x) { return x.id; });
      if (top2.indexOf(n.id) !== -1) isPin = true;
      return '<article class="xhs-card reveal' + (isPin ? ' is-pinned' : '') + '" data-cat="' + (n.cat || '') + '">' +
        (isPin ? '<span class="xhs-badge">置顶</span>' : '') +
        '<img class="xhs-cover" src="images/xhs/' + n.id + '.jpg" onerror="this.onerror=null;this.src=\'' + (n.cover || 'images/xhs-cover.svg') + '\'" alt="' + esc(n.title) + '" loading="lazy" />' +
        '<div class="xhs-card-body">' +
          '<h3 class="xhs-card-title">' + esc(n.title) + '</h3>' +
          '<div class="xhs-card-date">' + esc(n.date) + '</div>' +
          '<div class="xhs-hint">请移步到小红书观看 →</div>' +
        '</div></article>';
    }

    function render() {
      var sy = window.pageYOffset; /* 记住滚动位置，避免分页/筛选跳屏 */
      var ordered = getOrdered();
      var totalPages = Math.max(1, Math.ceil(ordered.length / PAGE_SIZE));
      if (curPage > totalPages) curPage = totalPages;
      var start = (curPage - 1) * PAGE_SIZE;
      var pageItems = ordered.slice(start, start + PAGE_SIZE);

      grid.innerHTML = pageItems.map(renderCard).join('');

      /* 分页导航 */
      var html = '';
      html += '<button class="xhs-page-btn"' + (curPage <= 1 ? ' disabled' : '') + ' data-xpage="prev">上一页</button>';
      html += '<span class="xhs-page-info">' + curPage + ' / ' + totalPages + ' 页（共 ' + ordered.length + ' 条）</span>';
      html += '<button class="xhs-page-btn"' + (curPage >= totalPages ? ' disabled' : '') + ' data-xpage="next">下一页</button>';
      pageBox.innerHTML = html;

      /* 触发 reveal 动画 */
      if (typeof IntersectionObserver !== 'undefined') {
        grid.querySelectorAll('.reveal:not(.in)').forEach(function (el) {
          var io = new IntersectionObserver(function (entries) {
            entries.forEach(function (en) {
              if (en.isIntersecting) { el.classList.add('in'); io.unobserve(el); }
            });
          }, { threshold: 0.12 });
          io.observe(el);
        });
      } else {
        grid.querySelectorAll('.reveal').forEach(function (el) { el.classList.add('in'); });
      }

      /* 还原滚动位置，分页/筛选时不跳屏 */
      window.scrollTo({ top: sy, left: 0, behavior: 'instant' });
    }

    /* 分类筛选 tab */
    if (filterBox && CATS.length) {
      var fHtml = CATS.map(function (c) {
        return '<button class="xhs-filter-btn' + (c.id === 'all' ? ' active' : '') + '" data-xcat="' + c.id + '" type="button">' + esc(c.label) + '</button>';
      }).join('');
      filterBox.innerHTML = fHtml;
      filterBox.querySelectorAll('.xhs-filter-btn').forEach(function (btn) {
        btn.addEventListener('click', function () {
          filterBox.querySelectorAll('.xhs-filter-btn').forEach(function (b) { b.classList.remove('active'); });
          btn.classList.add('active');
          activeCat = btn.getAttribute('data-xcat');
          curPage = 1;
          render();
        });
      });
    }

    /* 分页点击 */
    pageBox.addEventListener('click', function (e) {
      var btn = e.target.closest('[data-xpage]');
      if (!btn || btn.disabled) return;
      var d = btn.getAttribute('data-xpage');
      if (d === 'prev') curPage = Math.max(1, curPage - 1);
      else if (d === 'next') curPage++;
      render();
    });

    /* 首次渲染 */
    render();
  })();

  /* 能力卡折叠 */
  (function capsAccordion() {
    var heads = document.querySelectorAll('.about-text .cap-head');
    heads.forEach(function (h) {
      h.addEventListener('click', function () {
        var cap = h.closest('.cap');
        if (!cap) return;
        var open = cap.classList.toggle('open');
        h.setAttribute('aria-expanded', open ? 'true' : 'false');
      });
    });
  })();

  /* 文章阅读弹窗 — Markdown 即时渲染 */
  (function postModal() {
    var modal = document.getElementById('postModal');
    var body = document.getElementById('postModalBody');
    if (!modal || !body) return;
    var lastFocus = null;

    function open(id) {
      var a = POSTS.find(function (x) { return x.id === id; });
      if (!a || typeof window.renderMarkdown !== 'function') return;
      lastFocus = document.activeElement;

      body.innerHTML =
        '<article class="md-article">' +
          '<header class="post-head">' +
            '<span class="post-cat">' + esc(a.catLabel) + '</span>' +
            '<div class="post-meta"><span>' + esc(a.date) + '</span><span>·</span><span>' + esc(a.readTime) + '</span>' + (a.author ? '<span>·</span><span>' + esc(a.author) + '</span>' : '<span>·</span><span>Ross的研习社</span>') + '</div>' +
            (a.url ? '<a class="post-source-banner" href="' + esc(a.url) + '" target="_blank" rel="noopener">本文转载自「' + esc(a.author || '原文') + '」，阅读原文 <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><line x1="5" y1="12" x2="19" y2="12"/><polyline points="12 5 19 12 12 19"/></svg></a>' : '') +
          '</header>' +
          '<div class="md-body">' + window.renderMarkdown(a.md) + '</div>' +
        '</article>';

      modal.classList.add('open');
      modal.setAttribute('aria-hidden', 'false');
      document.body.style.overflow = 'hidden';
      modal.querySelector('.modal-panel').scrollTop = 0;
      setTimeout(function () { var f = modal.querySelector('.modal-back'); if (f) f.focus(); }, 50);
    }
    function close() {
      modal.classList.remove('open');
      modal.setAttribute('aria-hidden', 'true');
      document.body.style.overflow = '';
      if (lastFocus && lastFocus.focus) lastFocus.focus();
    }

    document.addEventListener('click', function (e) {
      var card = e.target.closest('[data-post-id]');
      if (card) {
        e.preventDefault();
        open(card.getAttribute('data-post-id'));
        return;
      }
      if (e.target.closest('[data-post-close]')) close();
    });
    document.addEventListener('keydown', function (e) {
      if (e.key === 'Escape' && modal.classList.contains('open')) close();
    });
  })();

  /* 滚动入场动画 */
  (function reveal() {
    var els = document.querySelectorAll('.reveal');
    if (!('IntersectionObserver' in window) || matchMedia('(prefers-reduced-motion: reduce)').matches) {
      els.forEach(function (e) { e.classList.add('in'); });
      return;
    }
    var io = new IntersectionObserver(function (entries) {
      entries.forEach(function (en) {
        if (en.isIntersecting) { en.target.classList.add('in'); io.unobserve(en.target); }
      });
    }, { threshold: 0.12, rootMargin: '0px 0px -40px 0px' });
    els.forEach(function (e) { io.observe(e); });
  })();

  /* 返回顶部 */
  (function backToTop() {
    var btn = document.getElementById('backToTop');
    if (!btn) return;
    function onScroll() {
      if (window.scrollY > 480) btn.classList.add('show');
      else btn.classList.remove('show');
    }
    onScroll();
    window.addEventListener('scroll', onScroll, { passive: true });
    btn.addEventListener('click', function () {
      window.scrollTo({ top: 0, behavior: 'smooth' });
    });
  })();

  function esc(s) {
    return String(s == null ? '' : s).replace(/[&<>"']/g, function (c) {
      return { '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;' }[c];
    });
  }
})();
