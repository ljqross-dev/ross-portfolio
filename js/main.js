// Ross Luo 作品集 — 交互脚本（R14：4 平台私域 + 留言板 + 侧边栏）
(function () {
  'use strict';
  var P = window.PROJECTS || [];

  /* ============================================================
     工具函数
     ============================================================ */
  function esc(s) {
    return String(s == null ? '' : s).replace(/[&<>"']/g, function (c) {
      return { '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;' }[c];
    });
  }

  function parseDateStr(s) {
    if (!s) return 0;
    var iso = String(s).match(/^(\d{4})-(\d{1,2})-(\d{1,2})$/);
    if (iso) return new Date(+iso[1], +iso[2] - 1, +iso[3]).getTime();
    var cn = String(s).match(/(\d{4})年(\d{1,2})月(\d{1,2})日/);
    if (cn) return new Date(+cn[1], +cn[2] - 1, +cn[3]).getTime();
    return 0;
  }

  /* reveal 助手：为动态注入的元素启动 IntersectionObserver */
  function activateReveals(container) {
    if (!container) return;
    if (typeof IntersectionObserver !== 'undefined' && !matchMedia('(prefers-reduced-motion: reduce)').matches) {
      container.querySelectorAll('.reveal:not(.in)').forEach(function (el) {
        var io = new IntersectionObserver(function (entries) {
          entries.forEach(function (en) {
            if (en.isIntersecting) { el.classList.add('in'); io.unobserve(el); }
          });
        }, { threshold: 0.12 });
        io.observe(el);
      });
    } else {
      container.querySelectorAll('.reveal').forEach(function (el) { el.classList.add('in'); });
    }
  }

  /* 分页 HTML 生成器 */
  function pageHtml(curPage, totalPages, totalItems, dataPrefix) {
    var html = '';
    html += '<button class="xhs-page-btn"' + (curPage <= 1 ? ' disabled' : '') + ' data-' + dataPrefix + '="prev">上一页</button>';
    html += '<span class="xhs-page-info">' + curPage + ' / ' + totalPages + ' 页（共 ' + totalItems + ' 条）</span>';
    html += '<button class="xhs-page-btn"' + (curPage >= totalPages ? ' disabled' : '') + ' data-' + dataPrefix + '="next">下一页</button>';
    return html;
  }

  /* ============================================================
     主题切换
     ============================================================ */
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

  /* 作品网格自适应列数 */
  /* 两行折叠 + 展开全部（作品 / 文章 通用） */
  var expandedWork = false;
  var expandedBlog = false;

  function gridCols() {
    var w = window.innerWidth;
    return w <= 560 ? 1 : (w <= 980 ? 2 : 3);
  }

  function applyLimitWork() {
    var grid = document.getElementById('workGrid');
    if (!grid) return;
    var cards = Array.prototype.slice.call(grid.querySelectorAll('.work-card'));
    var vis = cards.filter(function (c) { return !c.hasAttribute('hidden'); });
    var twoRows = gridCols() * 2;
    if (!expandedWork) {
      vis.forEach(function (c, i) {
        if (i >= twoRows) c.setAttribute('hidden', '');
        else c.removeAttribute('hidden');
      });
    } else {
      vis.forEach(function (c) { c.removeAttribute('hidden'); });
    }
    var btn = document.getElementById('workExpandBtn');
    if (btn) {
      if (vis.length > twoRows) {
        btn.hidden = false;
        btn.textContent = expandedWork ? '收起' : '展开全部';
      } else {
        btn.hidden = true;
      }
    }
    layoutWorkGrid();
  }

  function applyLimitBlog() {
    var grid = document.getElementById('blogGrid');
    if (!grid) return;
    var cards = Array.prototype.slice.call(grid.querySelectorAll('.post-card'));
    var vis = cards.filter(function (c) { return !c.hasAttribute('hidden'); });
    var twoRows = gridCols() * 2;
    if (!expandedBlog) {
      vis.forEach(function (c, i) {
        if (i >= twoRows) c.setAttribute('hidden', '');
        else c.removeAttribute('hidden');
      });
    } else {
      vis.forEach(function (c) { c.removeAttribute('hidden'); });
    }
    var btn = document.getElementById('blogExpandBtn');
    if (btn) {
      if (vis.length > twoRows) {
        btn.hidden = false;
        btn.textContent = expandedBlog ? '收起' : '展开全部';
      } else {
        btn.hidden = true;
      }
    }
  }

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
  window.addEventListener('resize', function () {
    layoutWorkGrid();
    applyLimitWork();
    applyLimitBlog();
  });

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
    applyLimitWork();
    var wb = document.getElementById('workExpandBtn');
    if (wb) wb.addEventListener('click', function () { expandedWork = !expandedWork; applyLimitWork(); });
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
        expandedWork = false;
        var f = btn.getAttribute('data-filter');
        cards().forEach(function (c) {
          var match = f === 'all' || c.getAttribute('data-cat') === f;
          if (match) c.removeAttribute('hidden');
          else c.setAttribute('hidden', '');
        });
        applyLimitWork();
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
      if (card) { e.preventDefault(); open(card.getAttribute('data-id')); return; }
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

  /* 文章列表 */
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
    applyLimitBlog();
    var bb = document.getElementById('blogExpandBtn');
    if (bb) bb.addEventListener('click', function () { expandedBlog = !expandedBlog; applyLimitBlog(); });
  })();

  /* 文章分类筛选 */
  (function blogFilters() {
    var topBtns = document.querySelectorAll('#blogFilters .filter-btn');
    var subBox = document.getElementById('blogSub');
    var subBtns = [];
    var activeTop = 'all';
    var activeSub = 'all';

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
          expandedBlog = false;
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
      applyLimitBlog();
    }

    if (!topBtns.length) return;
    topBtns.forEach(function (btn) {
      btn.addEventListener('click', function () {
        expandedBlog = false;
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

  /* 视频 / 动效 版块 */
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
    var av = document.querySelector('.about-video');
    if (av) { var pa = av.play(); if (pa && typeof pa.catch === 'function') pa.catch(function () {}); }

    /* 视频展开/收起 */
    var expandedVideo = false;
    function applyLimitVideo() {
      var cards = Array.prototype.slice.call(grid.querySelectorAll('.video-card'));
      var twoRows = gridCols() * 2;
      if (!expandedVideo) {
        cards.forEach(function (c, i) {
          if (i >= twoRows) c.setAttribute('hidden', '');
          else c.removeAttribute('hidden');
        });
      } else {
        cards.forEach(function (c) { c.removeAttribute('hidden'); });
      }
      var btn = document.getElementById('videoExpandBtn');
      if (btn) {
        if (cards.length > twoRows) {
          btn.hidden = false;
          btn.textContent = expandedVideo ? '收起' : '展开全部';
        } else {
          btn.hidden = true;
        }
      }
    }
    applyLimitVideo();
    var vb = document.getElementById('videoExpandBtn');
    if (vb) vb.addEventListener('click', function () { expandedVideo = !expandedVideo; applyLimitVideo(); });
    window.addEventListener('resize', function () { applyLimitVideo(); });
  })();

  /* ============================================================
     私域模块 — 平台配置与作者行动态渲染
     ============================================================ */
  /* ============================================================
     私域平台切换：Dribbble / 小红书（2 平台）
     ============================================================ */
  (function privateTabs() {
    var tabs = document.querySelectorAll('.pd-tab');
    var views = document.querySelectorAll('.pd-view');
    if (!tabs.length) return;

    tabs.forEach(function (tab) {
      tab.addEventListener('click', function () {
        var p = tab.getAttribute('data-platform');
        tabs.forEach(function (t) {
          var on = t === tab;
          t.classList.toggle('active', on);
          t.setAttribute('aria-selected', on ? 'true' : 'false');
        });
        views.forEach(function (v) {
          v.hidden = (v.getAttribute('data-view') !== p);
        });
        /* 切换作者信息（与 Tab 同步） */
        var authors = document.querySelectorAll('.pd-author');
        authors.forEach(function (a) {
          a.hidden = !a.classList.contains('pd-author--' + p);
        });
        /* 切换后让目标视图内的 reveal 元素立即可见 */
        var target = document.querySelector('.pd-view[data-view="' + p + '"]');
        if (target) target.querySelectorAll('.reveal:not(.in)').forEach(function (el) { el.classList.add('in'); });
        window.scrollTo({ top: window.pageYOffset, behavior: 'instant' });
      });
    });
  })();

  /* ============================================================
     私域 · Dribbble 网格（分类 Tab + 分页）
     ============================================================ */
  (function dribbbleGrid() {
    var grid = document.getElementById('dribbbleGrid');
    var filterBox = document.getElementById('dFilters');
    var pageBox = document.getElementById('dribbblePagination');
    if (!grid || !window.DRIBBBLE) return;

    // 作者头像：优先用数据中的地址（同步脚本会改为本地自托管路径），失败时回退占位图
    var authorAvatar = document.querySelector('.pd-author--dribbble .pd-author-avatar');
    if (authorAvatar && window.DRIBBBLE.avatar) {
      authorAvatar.src = window.DRIBBBLE.avatar;
      authorAvatar.setAttribute('referrerpolicy', 'no-referrer');
      authorAvatar.onerror = function () { this.onerror = null; this.src = 'images/dribbble-avatar.svg'; };
    }

    var SHOTS = (window.DRIBBBLE.shots || []).slice();
    var CATS = (window.DRIBBBLE.categories || [{ id: 'all', label: '全部' }]);
    var PAGE_SIZE = 6;
    var curPage = 1;
    var activeCat = 'all';

    function catLabel(id) {
      var c = CATS.filter(function (x) { return x.id === id; })[0];
      return c ? c.label : id;
    }
    function getFiltered() {
      return activeCat === 'all' ? SHOTS.slice() : SHOTS.filter(function (s) { return s.cat === activeCat; });
    }
    function renderCard(s) {
      return '<article class="xhs-card dribbble-card reveal" data-did="' + s.id + '" data-cat="' + (s.cat || '') + '">' +
        '<img class="xhs-cover" src="' + s.cover + '" alt="' + esc(s.title) + '" loading="lazy" decoding="async" referrerpolicy="no-referrer" onerror="this.onerror=null;this.src=\'images/dribbble-cover.svg\'" />' +
        '<div class="xhs-card-body">' +
          '<h3 class="xhs-card-title">' + esc(s.title) + '</h3>' +
          '<div class="xhs-card-cat">' + esc(catLabel(s.cat)) + '</div>' +
          '<div class="xhs-hint">查看原图与详情 →</div>' +
        '</div></article>';
    }
    function render() {
      var sy = window.pageYOffset;
      var list = getFiltered();
      var totalPages = Math.max(1, Math.ceil(list.length / PAGE_SIZE));
      if (curPage > totalPages) curPage = totalPages;
      var start = (curPage - 1) * PAGE_SIZE;
      var pageItems = list.slice(start, start + PAGE_SIZE);
      grid.innerHTML = pageItems.map(renderCard).join('');
      pageBox.innerHTML = pageHtml(curPage, totalPages, list.length, 'dpage');
      activateReveals(grid);
      window.scrollTo({ top: sy, left: 0, behavior: 'instant' });
    }

    if (filterBox && CATS.length) {
      filterBox.innerHTML = CATS.map(function (c) {
        return '<button class="xhs-filter-btn' + (c.id === 'all' ? ' active' : '') + '" data-dcat="' + c.id + '" type="button">' + esc(c.label) + '</button>';
      }).join('');
      filterBox.querySelectorAll('.xhs-filter-btn').forEach(function (btn) {
        btn.addEventListener('click', function () {
          filterBox.querySelectorAll('.xhs-filter-btn').forEach(function (b) { b.classList.remove('active'); });
          btn.classList.add('active');
          activeCat = btn.getAttribute('data-dcat');
          curPage = 1;
          render();
        });
      });
    }

    pageBox.addEventListener('click', function (e) {
      var btn = e.target.closest('[data-dpage]');
      if (!btn || btn.disabled) return;
      if (btn.getAttribute('data-dpage') === 'prev') curPage = Math.max(1, curPage - 1);
      else curPage++;
      render();
    });

    render();
  })();

  /* ============================================================
     私域 · 小红书网格（保持原有逻辑不变）
     ============================================================ */
  (function xhsGrid() {
    var grid = document.getElementById('xhsGrid');
    var filterBox = document.getElementById('xFilters');
    var pageBox = document.getElementById('xhsPagination');
    if (!grid || !window.XHS) return;

    var NOTES = (window.XHS.notes || []).slice();
    var CATS = (window.XHS.categories || [{ id: 'all', label: '全部' }]);
    var PAGE_SIZE = 6;
    var curPage = 1;
    var activeCat = 'all';

    function eng(n) { return (n.likes || 0) + (n.collects || 0) + (n.comments || 0); }
    function getOrdered() {
      var filtered = activeCat === 'all' ? NOTES.slice() : NOTES.filter(function (n) { return n.cat === activeCat; });
      var pinnedIds = filtered.slice().sort(function (a, b) { return eng(b) - eng(a); }).slice(0, 2).map(function (n) { return n.id; });
      var pinned = filtered.filter(function (n) { return pinnedIds.indexOf(n.id) !== -1; });
      var rest = filtered.filter(function (n) { return pinnedIds.indexOf(n.id) === -1; })
        .sort(function (a, b) { return String(a.date) < String(b.date) ? -1 : 1; });
      return pinned.concat(rest);
    }
    function renderCard(n) {
      var ordered = getOrdered();
      var top2 = ordered.slice(0, 2).map(function (x) { return x.id; });
      var isPin = top2.indexOf(n.id) !== -1;
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
      var sy = window.pageYOffset;
      var ordered = getOrdered();
      var totalPages = Math.max(1, Math.ceil(ordered.length / PAGE_SIZE));
      if (curPage > totalPages) curPage = totalPages;
      var start = (curPage - 1) * PAGE_SIZE;
      grid.innerHTML = ordered.slice(start, start + PAGE_SIZE).map(renderCard).join('');
      pageBox.innerHTML = pageHtml(curPage, totalPages, ordered.length, 'xpage');
      activateReveals(grid);
      window.scrollTo({ top: sy, left: 0, behavior: 'instant' });
    }

    if (filterBox && CATS.length) {
      filterBox.innerHTML = CATS.map(function (c) {
        return '<button class="xhs-filter-btn' + (c.id === 'all' ? ' active' : '') + '" data-xcat="' + c.id + '" type="button">' + esc(c.label) + '</button>';
      }).join('');
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

    pageBox.addEventListener('click', function (e) {
      var btn = e.target.closest('[data-xpage]');
      if (!btn || btn.disabled) return;
      if (btn.getAttribute('data-xpage') === 'prev') curPage = Math.max(1, curPage - 1);
      else curPage++;
      render();
    });

    render();
  })();

  /* ============================================================
     Dribbble 详情弹窗
     ============================================================ */
  (function dModal() {
    var modal = document.getElementById('dModal');
    var body = document.getElementById('dModalBody');
    var link = document.getElementById('dModalLink');
    if (!modal || !body) return;
    var lastFocus = null;

    function open(id) {
      var list = window.DRIBBBLE.shots || [];
      var s = null;
      for (var i = 0; i < list.length; i++) { if (list[i].id === id) { s = list[i]; break; } }
      if (!s) return;
      lastFocus = document.activeElement;
      var imgs = (s.images && s.images.length ? s.images : [s.cover]).map(function (u, i) {
        return '<figure class="modal-fig"><img src="' + u + '" alt="' + esc(s.title) + ' 图 ' + (i + 1) + '" loading="' + (i < 2 ? 'eager' : 'lazy') + '" decoding="async" referrerpolicy="no-referrer" onerror="this.onerror=null;this.src=\'images/dribbble-cover.svg\'" /></figure>';
      }).join('');
      body.innerHTML =
        '<div class="modal-intro">' +
          '<span class="work-tag">Dribbble</span>' +
          '<h1 class="modal-title">' + esc(s.title) + '</h1>' +
          (s.tags ? '<div class="modal-desc"><p>' + esc(s.tags) + '</p></div>' : '') +
        '</div>' +
        '<div class="modal-gallery">' + imgs + '</div>';
      if (link) link.href = s.link;
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
      var card = e.target.closest('[data-did]');
      if (card) { e.preventDefault(); open(card.getAttribute('data-did')); return; }
      if (e.target.closest('[data-dclose]') || e.target === modal) close();
    });
    document.addEventListener('keydown', function (e) {
      if (e.key === 'Escape' && modal.classList.contains('open')) close();
    });
  })();

  /* ============================================================
     能力卡折叠
     ============================================================ */
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

  /* ============================================================
     文章阅读弹窗
     ============================================================ */
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
      if (card) { e.preventDefault(); open(card.getAttribute('data-post-id')); return; }
      if (e.target.closest('[data-post-close]')) close();
    });
    document.addEventListener('keydown', function (e) {
      if (e.key === 'Escape' && modal.classList.contains('open')) close();
    });
  })();

  /* ============================================================
     滚动入场动画
     ============================================================ */
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

  /* ============================================================
     留言板功能（本地存储，站酷风格）
     ============================================================ */
  (function guestbook() {
    var input = document.getElementById('gbInput');
    var nameInput = document.getElementById('gbName');
    var countEl = document.getElementById('gbCount');
    var submitBtn = document.getElementById('gbSubmit');
    var listEl = document.getElementById('gbList');
    var emptyEl = document.getElementById('gbEmpty');
    if (!input || !listEl) return;

    var STORAGE_KEY = 'ross_guestbook_messages';
    var messages = [];

    /* 加载本地存储的留言 */
    try { messages = JSON.parse(localStorage.getItem(STORAGE_KEY) || '[]'); } catch (e) { messages = []; }

    /* 字数统计 */
    input.addEventListener('input', function () {
      var len = input.value.length;
      if (countEl) countEl.textContent = len;
    });

    /* 表情按钮 + 面板 */
    var emojiBtn = document.getElementById('gbEmojiBtn');
    var emojiPanel = document.getElementById('gbEmojiPanel');
    if (emojiBtn && emojiPanel) {
      var EMOJIS = ['😀','😁','😂','🤣','😊','😍','😘','😎','🤔','😅','😉','😇','🙃','😋','😜','🤩','😏','😴','😭','😡','👍','👎','👏','🙌','💪','🤝','❤️','💔','🔥','✨','🌟','💡','🎉','✅','❓','💯','🚀','🌈','🍻','☕','📌','💬','📝','🎨','📱','💻','🌹','🍀','👀','🐱','🐶','🌸','🍎','⚡','🎯','💰','📈','🤖'];
      EMOJIS.forEach(function (e) {
        var b = document.createElement('button');
        b.type = 'button';
        b.textContent = e;
        b.setAttribute('aria-label', '插入表情 ' + e);
        b.addEventListener('click', function () {
          insertAtCursor(input, e);
          input.focus();
        });
        emojiPanel.appendChild(b);
      });

      emojiBtn.addEventListener('click', function (e) {
        e.stopPropagation();
        emojiPanel.hidden = !emojiPanel.hidden;
      });

      /* 点击面板外部关闭 */
      document.addEventListener('click', function (e) {
        if (emojiPanel.hidden) return;
        if (e.target !== emojiBtn && !emojiBtn.contains(e.target) && !emojiPanel.contains(e.target)) {
          emojiPanel.hidden = true;
        }
      });
      /* Esc 关闭 */
      document.addEventListener('keydown', function (e) {
        if (e.key === 'Escape' && !emojiPanel.hidden) emojiPanel.hidden = true;
      });
    }

    /* 在光标处插入文本（受 maxlength 限制） */
    function insertAtCursor(el, text) {
      var MAX = parseInt(el.getAttribute('maxlength'), 10) || 300;
      var start = el.selectionStart, end = el.selectionEnd;
      var val = el.value;
      var room = MAX - val.length;
      if (room <= 0) return;
      if (text.length > room) text = text.slice(0, room);
      el.value = val.slice(0, start) + text + val.slice(end);
      var pos = start + text.length;
      el.selectionStart = el.selectionEnd = pos;
      el.dispatchEvent(new Event('input'));
    }

    /* 提交留言 */
    submitBtn.addEventListener('click', function () {
      var text = input.value.trim();
      if (!text) { input.focus(); return; }
      var name = (nameInput.value.trim() || '匿名访客').slice(0, 20);

      var msg = {
        id: Date.now(),
        name: name,
        text: text.slice(0, 500),
        date: new Date().toLocaleString('zh-CN', { year: 'numeric', month: '2-digit', day: '2-digit', hour: '2-digit', minute: '2-digit' }),
        initial: name.charAt(0).toUpperCase()
      };

      messages.unshift(msg);
      /* 最多保留 100 条 */
      if (messages.length > 100) messages = messages.slice(0, 100);

      try { localStorage.setItem(STORAGE_KEY, JSON.stringify(messages)); } catch (e) { /* 存储满时静默 */ }

      /* 清空输入 */
      input.value = '';
      if (countEl) countEl.textContent = '0';
      if (nameInput) nameInput.value = '';

      /* 重新渲染列表 */
      renderList();
    });

    /* 回车提交（Shift+Enter 换行） */
    input.addEventListener('keydown', function (e) {
      if (e.key === 'Enter' && !e.shiftKey) { e.preventDefault(); submitBtn.click(); }
    });

    function renderList() {
      if (!messages.length) {
        if (emptyEl) emptyEl.style.display = '';
        /* 清除旧留言 DOM（保留空状态元素） */
        Array.from(listEl.children).forEach(function (c) {
          if (c !== emptyEl) c.remove();
        });
        return;
      }
      if (emptyEl) emptyEl.style.display = 'none';

      /* 只保留空状态元素，其余清空 */
      var existing = Array.from(listEl.children).filter(function (c) { return c !== emptyEl; });
      existing.forEach(function (c) { c.remove(); });

      /* 渲染留言 */
      var frag = document.createDocumentFragment();
      messages.forEach(function (msg, idx) {
        var item = document.createElement('div');
        item.className = 'gb-item';
        item.innerHTML =
          '<div class="gb-item-avatar">' + esc(msg.initial) + '</div>' +
          '<div class="gb-item-body">' +
            '<div class="gb-item-header">' +
              '<span class="gb-item-name">' + esc(msg.name) + '</span>' +
              '<span class="gb-item-time">' + esc(msg.date) + '</span>' +
            '</div>' +
            '<div class="gb-item-text">' + esc(msg.text).replace(/\n/g, '<br/>') + '</div>' +
          '</div>' +
          '<button class="gb-item-del" title="删除此留言" aria-label="删除留言">&times;</button>';
        /* 直接绑定删除（不用事件委托） */
        var delBtn = item.querySelector('.gb-item-del');
        if (delBtn) delBtn.addEventListener('click', (function (i) {
          return function () {
            if (!confirm('确定要删除这条留言吗？')) return;
            messages.splice(i, 1);
            try { localStorage.setItem(STORAGE_KEY, JSON.stringify(messages)); } catch (e) { /* 静默 */ }
            renderList();
          };
        })(idx));
        frag.appendChild(item);
      });
      listEl.insertBefore(frag, emptyEl);
    }

    /* 首次渲染 */
    renderList();
  })();

  /* ============================================================
     统计条 · 公开作品数 动态同步（取自 Dribbble 作品数）
     ============================================================ */
  (function statWorks() {
    var el = document.getElementById('statWorks');
    if (!el) return;
    var n = (window.DRIBBBLE && window.DRIBBBLE.shots) ? window.DRIBBBLE.shots.length : 0;
    if (n > 0) el.textContent = String(n);
  })();

  /* ============================================================
     GitHub Star 数 · 实时拉取
     公开仓库支持 CORS 直连，无需后端；localStorage 缓存 1 小时，
     API 失败/限流时回退到真实初始值（1）。
     ============================================================ */
  (function githubStars() {
    var el = document.getElementById('ghStarCount');
    if (!el) return;
    var CACHE_KEY = 'ross_gh_stars';
    var CACHE_TTL = 3600 * 1000; // 1 小时
    var FALLBACK = 1;            // 真实初始 star 数，API 失败时使用
    var API = 'https://api.github.com/repos/ljqross-dev/ross-portfolio';

    function render(n) {
      if (typeof n === 'number' && n >= 0) el.textContent = String(n);
    }

    // 1) 先读缓存：命中且未过期则直接用，跳过请求
    try {
      var raw = localStorage.getItem(CACHE_KEY);
      if (raw) {
        var c = JSON.parse(raw);
        if (c && typeof c.count === 'number' && (Date.now() - c.ts) < CACHE_TTL) {
          render(c.count);
          return;
        }
      }
    } catch (e) { /* 忽略缓存读取错误 */ }

    // 2) 缓存未命中/过期 → 请求 GitHub API
    if (typeof fetch !== 'function') { render(FALLBACK); return; }
    fetch(API, { headers: { 'Accept': 'application/vnd.github+json' } })
      .then(function (r) {
        if (!r.ok) throw new Error('HTTP ' + r.status);
        return r.json();
      })
      .then(function (d) {
        var n = (d && typeof d.stargazers_count === 'number') ? d.stargazers_count : FALLBACK;
        render(n);
        try { localStorage.setItem(CACHE_KEY, JSON.stringify({ count: n, ts: Date.now() })); } catch (e) { /* 静默 */ }
      })
      .catch(function () {
        render(FALLBACK); // 失败保留默认真实值，不报错
      });
  })();

  /* ============================================================
     折叠初始化（双保险）
     确保「作品 / 文章」在默认（全部）视图下：
     ① 仅展示两行；② 超两行时显示「展开全部」按钮。
     脚本底部与 window.load 各执行一次，规避任何时序/缓存导致的初始状态异常。
     ============================================================ */
  applyLimitWork();
  applyLimitBlog();
  window.addEventListener('load', function () {
    applyLimitWork();
    applyLimitBlog();
  });

  /* ============================================================
     AI Design News 初始化
     ============================================================ */
  (function () {
    if (typeof window.initAiNews === 'function') {
      window.initAiNews();
    }
    var refreshBtn = document.getElementById('aiNewsRefresh');
    if (refreshBtn && typeof window.fetchAiNews === 'function') {
      refreshBtn.addEventListener('click', function () {
        refreshBtn.style.transform = 'rotate(360deg)';
        refreshBtn.style.transition = 'transform .5s ease';
        setTimeout(function () { refreshBtn.style.transform = ''; refreshBtn.style.transition = ''; }, 500);
        window.fetchAiNews().then(window.renderAiNews);
      });
    }
  })();

  /* ============================================================
     禁止右键保存 / 拖拽图片和视频
     ============================================================ */
  document.addEventListener('contextmenu', function (e) {
    var t = e.target;
    if (t.tagName === 'IMG' || t.tagName === 'VIDEO' ||
        (t.parentElement && (t.parentElement.tagName === 'IMG' || t.parentElement.tagName === 'VIDEO'))) {
      e.preventDefault();
    }
  });
  document.addEventListener('dragstart', function (e) {
    var t = e.target;
    if (t.tagName === 'IMG' || t.tagName === 'VIDEO') {
      e.preventDefault();
    }
  });
  document.addEventListener('selectstart', function (e) {
    var t = e.target;
    if (t.tagName === 'IMG' || t.tagName === 'VIDEO') {
      e.preventDefault();
    }
  });
})();
