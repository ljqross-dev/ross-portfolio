/**
 * market-float.js — 股票市场总览悬浮窗
 *
 * 交互逻辑：
 *   - hover 任一 AI News 条目（快讯 / 今日必读 / 瀑布流）→ 悬浮窗显示
 *   - 悬浮窗自身可保持 hover（鼠标移上去不消失）
 *   - hover 哪个条目 → 悬浮窗垂直位置轻微跟随（更"贴近"内容）
 *   - 离开条目 + 离开悬浮窗 → 淡出隐藏
 *
 * 数据：调用后端 /api/market（拉取腾讯财经 qt.gtimg.cn 全 A 股行情并统计）
 *      首次加载后由前端每 30 秒轮询一次
 */
(function () {
  'use strict';

  // 真实数据字段（来自 /api/market 响应）
  var STATE = {
    zt: 0,         // 涨停家数
    dt: 0,         // 跌停家数
    flow: 0,       // 主力资金净流入（亿元）
    fx: 7.18,      // 美元兑人民币
    upCount: 0,    // 上涨家数
    flatCount: 0,  // 平盘家数
    downCount: 0,  // 下跌家数
    hot: { name: '—', pct: '—' },
    sh: null,      // 上证指数
    upRatio: 0,
    flatRatio: 0,
    downRatio: 0,
    updatedAt: null,  // 数据时间戳
    isFallback: false
  };

  var REFRESH_TIMER = null;       // 数据轮询定时器
  var SOFT_TICKER = null;         // 微抖动定时器（视觉）
  var SPIN_LOCK = false;
  var IO = null;                  // IntersectionObserver 实例
  var CARD_OBSERVER_WATCHING = false;
  var HEADER_GUARD = 68 + 16;     // sticky header 高度 + 缓冲
  var POLL_INTERVAL = 30000;      // 30 秒轮询一次
  var SOFT_INTERVAL = 4000;       // 视觉抖动 4 秒

  // ========== DOM 引用 ==========
  function $(id) { return document.getElementById(id); }
  var floatEl, cardEl, refreshBtn, listEl, updateTimeEl;
  var ztEl, dtEl, flowEl, fxEl, upEl, flatEl, downEl, hotNameEl, hotPctEl;
  var barUpEl, barFlatEl, barDownEl;

  // ========== 视觉抖动（不改 STATE 基线） ==========
  function applyJitter() {
    // 对展示值做微小偏移，使数字"跳动"但不改变真实基线
    function jit(v, range, decimals) {
      var delta = (Math.random() - 0.5) * 2 * range;
      var factor = Math.pow(10, decimals == null ? 2 : decimals);
      return Math.max(0, Math.round((v + delta) * factor) / factor);
    }
    // 仅视觉偏移显示（zt/dt/flow/fx 用 ±小范围抖动）
    if (ztEl)    ztEl.textContent    = jit(STATE.zt, 2, 0);
    if (dtEl)    dtEl.textContent    = jit(STATE.dt, 1, 0);
    if (flowEl)  flowEl.textContent  = (STATE.flow >= 0 ? '+' : '') + jit(STATE.flow, 3, 2) + '\u4ebf';
    if (fxEl)    fxEl.textContent    = jit(STATE.fx, 0.003, 4);
  }

  function flashElement(el, dir) {
    if (!el) return;
    var cls = dir === 'up' ? 'is-flash-up' : (dir === 'down' ? 'is-flash-down' : '');
    if (!cls) return;
    el.classList.remove('is-flash-up', 'is-flash-down');
    void el.offsetWidth;
    el.classList.add(cls);
    setTimeout(function () { el.classList.remove(cls); }, 900);
  }

  // ========== 应用后端 API 数据到 STATE + DOM ==========
  function applyApiData(data) {
    if (!data) return;

    var oldZt = STATE.zt, oldDt = STATE.dt, oldFlow = STATE.flow, oldFx = STATE.fx;
    var oldUp = STATE.upCount, oldDown = STATE.downCount;

    STATE.zt        = data.zt || 0;
    STATE.dt        = data.dt || 0;
    STATE.flow      = data.flow_yi || 0;    // API 返回 flow_yi（亿元）
    STATE.fx        = data.fx || 7.18;
    STATE.upCount   = data.up || 0;
    STATE.downCount = data.down || 0;
    STATE.flatCount = data.flat || 0;
    STATE.hot       = data.hot || { name: '—', pct: '—' };
    STATE.sh        = data.sh || null;
    STATE.updatedAt = data.server_time ? formatTime(data.server_time) : null;
    STATE.isFallback = data.isFallback || false;

    // 渲染到 DOM
    if (ztEl)    ztEl.textContent = STATE.zt;
    if (dtEl)    dtEl.textContent = STATE.dt;
    if (flowEl)  flowEl.textContent = (STATE.flow >= 0 ? '+' : '') + STATE.flow.toFixed(2) + '\u4ebf';
    if (fxEl)    fxEl.textContent = STATE.fx.toFixed(4);
    if (upEl)    upEl.textContent = STATE.upCount;
    if (flatEl)  flatEl.textContent = STATE.flatCount;
    if (downEl)  downEl.textContent = STATE.downCount;
    if (hotNameEl) hotNameEl.textContent = STATE.hot.name;
    if (hotPctEl)  hotPctEl.textContent = STATE.hot.pct;

    // 更新时间显示
    if (updateTimeEl && STATE.updatedAt) {
      updateTimeEl.textContent = STATE.updatedAt;
    }

    // 进度条
    var total = STATE.upCount + STATE.flatCount + STATE.downCount;
    if (total > 0 && barUpEl && barFlatEl && barDownEl) {
      barUpEl.style.width   = (STATE.upCount / total * 100).toFixed(1) + '%';
      barFlatEl.style.width = (STATE.flatCount / total * 100).toFixed(1) + '%';
      barDownEl.style.width = (STATE.downCount / total * 100).toFixed(1) + '%';
    }

    // 闪光提示
    flashElement(ztEl,    STATE.zt > oldZt ? 'up' : (STATE.zt < oldZt ? 'down' : ''));
    flashElement(flowEl,  STATE.flow >= 0 ? 'up' : 'down');
    flashElement(upEl,    STATE.upCount > oldUp ? 'up' : '');
    flashElement(downEl,  STATE.downCount > oldDown ? 'down' : '');
  }

  // 格式化时间戳为 HH:MM
  function formatTime(ts) {
    if (!ts) return '--:--';
    var d = new Date(ts * 1000);
    var h = String(d.getHours()).padStart(2, '0');
    var m = String(d.getMinutes()).padStart(2, '0');
    return h + ':' + m;
  }

  // ========== 从后端拉取行情数据 ==========
  function fetchMarketData(opts) {
    opts = opts || {};
    var manual = !!opts.manual;

    if (SPIN_LOCK && !manual) return;
    if (manual) {
      SPIN_LOCK = true;
      if (refreshBtn) refreshBtn.classList.add('is-spin');
    }

    fetch('/api/market')
      .then(function (r) { return r.json(); })
      .then(function (data) {
        applyApiData(data);
      })
      .catch(function (err) {
        console.warn('[market-float] fetch /api/market failed:', err);
      })
      .then(function () {
        if (manual) {
          setTimeout(function () {
            if (refreshBtn) refreshBtn.classList.remove('is-spin');
            SPIN_LOCK = false;
          }, 400);
        }
      });
  }

  // ========== Hover 交互 ==========
  function bindHover() {
    if (!listEl || !floatEl) return;

    // hover 的目标选择器：所有新闻条目
    var itemSelector = '.ainews-flash, .ainews-mustread-item, .ainews-waterfall-item';

    // 用事件委托监听 listEl 内的 mouseenter/mouseleave
    listEl.addEventListener('mouseover', function (e) {
      var item = e.target.closest(itemSelector);
      if (!item) return;
      showFloat(item);
    });

    listEl.addEventListener('mouseout', function (e) {
      var item = e.target.closest(itemSelector);
      if (!item) return;
      // 检查 relatedTarget 是否还在 listEl 内
      var related = e.relatedTarget;
      if (related && item.contains(related)) return;
      // 也可能直接移到 floatEl 上，需要延后判断
      setTimeout(function () {
        if (!isPointerInside()) hideFloat();
      }, 60);
    });

    // 悬浮窗自身的 hover 保持
    floatEl.addEventListener('mouseenter', function () {
      showFloat();
    });
    floatEl.addEventListener('mouseleave', function () {
      setTimeout(function () {
        if (!isPointerInside()) hideFloat();
      }, 60);
    });
  }

  // 检查鼠标是否在 listEl 或 floatEl 内（用 lastKnown 简化）
  var _lastInside = false;
  var _insideTimer = null;
  function isPointerInside() { return _lastInside; }

  function markInside(on) {
    _lastInside = on;
    if (on) {
      clearTimeout(_insideTimer);
      _insideTimer = setTimeout(function () { _lastInside = false; }, 800);
    }
  }

  function showFloat(targetItem) {
    if (!floatEl) return;

    // === 防遮挡判定 1：ainews-card 不在视口内（已滚出）→ 强制隐藏 ===
    if (cardEl && isCardOutOfView(cardEl)) {
      hideFloat();
      return;
    }

    // === 防遮挡判定 2：悬浮窗屏幕位置会被 sticky header 遮挡 → 强制隐藏 ===
    if (cardEl && willFloatBeCovered(cardEl)) {
      hideFloat();
      return;
    }

    markInside(true);
    floatEl.classList.add('is-visible');
    floatEl.setAttribute('aria-hidden', 'false');

    // 垂直位置轻微跟随（不超过卡片范围）
    if (targetItem && cardEl) {
      var cardRect = cardEl.getBoundingClientRect();
      var itemRect = targetItem.getBoundingClientRect();
      var desiredTop = (itemRect.top - cardRect.top) + itemRect.height / 2 - 110; // -110 居中到悬浮窗中心
      // 限制范围
      var minTop = 56;    // 卡片头部之下
      var maxTop = cardEl.clientHeight - 240;
      if (desiredTop < minTop) desiredTop = minTop;
      if (desiredTop > maxTop) desiredTop = maxTop;
      floatEl.style.top = desiredTop + 'px';
    }
  }

  function hideFloat() {
    if (!floatEl) return;
    floatEl.classList.remove('is-visible');
    floatEl.setAttribute('aria-hidden', 'true');
  }

  /**
   * 判断 ainews-card 是否完全不在视口内
   *  - 卡片底部在视口顶部之上（已向上滚出）
   *  - 卡片顶部在视口底部之下（已向下滚出，且不是首屏进入）
   */
  function isCardOutOfView(el) {
    var rect = el.getBoundingClientRect();
    var vh = window.innerHeight || document.documentElement.clientHeight;
    // 完全在视口上方
    if (rect.bottom <= 0) return true;
    // 完全在视口下方（且距离 > 一屏）
    if (rect.top >= vh) return true;
    return false;
  }

  /**
   * 判断悬浮窗（基于其当前 top）是否会被 sticky header 遮挡
   *  - 卡片顶部 + 悬浮窗 top < HEADER_GUARD → 被遮
   */
  function willFloatBeCovered(el) {
    var rect = el.getBoundingClientRect();
    var floatTopPx = parseFloat(floatEl.style.top) || 60;
    var screenTop = rect.top + floatTopPx;
    return screenTop < HEADER_GUARD;
  }

  /**
   * IntersectionObserver 回调
   * 卡片与视口相交率变为 0 时强制隐藏
   */
  function onCardIntersect(entries) {
    for (var i = 0; i < entries.length; i++) {
      if (!entries[i].isIntersecting) {
        hideFloat();
      }
    }
  }

  /**
   * scroll/resize 监听：在悬浮窗已可见时检查是否被 header 遮挡
   */
  function onScrollCheck() {
    if (!floatEl || !floatEl.classList.contains('is-visible')) return;
    if (!cardEl) return;
    if (isCardOutOfView(cardEl) || willFloatBeCovered(cardEl)) {
      hideFloat();
    }
  }

  // ========== 刷新按钮 ==========
  function bindRefresh() {
    if (!refreshBtn) return;
    refreshBtn.addEventListener('click', function (e) {
      e.stopPropagation();
      if (SPIN_LOCK) return;
      fetchMarketData({ manual: true });
    });
  }

  // ========== 定时器：视觉抖动 + 数据轮询 ==========
  function startTicker() {
    stopTicker();

    // 视觉抖动（每 SOFT_INTERVAL 毫秒，不改 STATE 基线）
    SOFT_TICKER = setInterval(applyJitter, SOFT_INTERVAL);

    // 数据轮询（每 POLL_INTERVAL 毫秒，拉取后端真实数据）
    REFRESH_TIMER = setInterval(function () {
      fetchMarketData();
    }, POLL_INTERVAL);
  }
  function stopTicker() {
    if (SOFT_TICKER) {
      clearInterval(SOFT_TICKER);
      SOFT_TICKER = null;
    }
    if (REFRESH_TIMER) {
      clearInterval(REFRESH_TIMER);
      REFRESH_TIMER = null;
    }
  }

  // ========== 初始化 ==========
  window.initMarketFloat = function () {
    floatEl   = $('marketFloat');
    cardEl    = document.querySelector('.ainews-card');
    listEl    = $('aiNewsList');
    refreshBtn = $('marketFloatRefresh');

    ztEl      = $('marketFloatZt');
    dtEl      = $('marketFloatDt');
    flowEl    = $('marketFlow');
    fxEl      = $('marketFx');
    upEl      = $('marketUpCount');
    flatEl    = $('marketFlatCount');
    downEl    = $('marketDownCount');
    hotNameEl = $('marketFloatHot');
    hotPctEl  = $('marketFloatHotPct');
    barUpEl   = $('marketBarUp');
    barFlatEl = $('marketBarFlat');
    barDownEl = $('marketBarDown');
    updateTimeEl = $('marketUpdateTime');

    if (!floatEl) return;

    // 首次拉取真实数据
    fetchMarketData();
    bindHover();
    bindRefresh();
    startTicker();

    // 防遮挡：IntersectionObserver 监听 ainews-card 是否在视口内
    if (cardEl && 'IntersectionObserver' in window && !CARD_OBSERVER_WATCHING) {
      IO = new IntersectionObserver(onCardIntersect, {
        root: null,
        rootMargin: '-' + HEADER_GUARD + 'px 0px 0px 0px',
        threshold: 0
      });
      IO.observe(cardEl);
      CARD_OBSERVER_WATCHING = true;
    }

    // scroll/resize 兜底监听（防 IO 在跨阈值的快速滚动中漏掉）
    window.addEventListener('scroll', onScrollCheck, { passive: true });
    window.addEventListener('resize', onScrollCheck);
  };
})();