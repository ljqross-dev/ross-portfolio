/**
 * market-float.js — 股票市场总览悬浮窗
 *
 * 交互逻辑：
 *   - hover 任一 AI News 条目（快讯 / 今日必读 / 瀑布流）→ 悬浮窗显示
 *   - 悬浮窗自身可保持 hover（鼠标移上去不消失）
 *   - hover 哪个条目 → 悬浮窗垂直位置轻微跟随（更"贴近"内容）
 *   - 离开条目 + 离开悬浮窗 → 淡出隐藏
 *
 * 数据：当前为模拟数据，每 4 秒微抖动营造实时感
 *      （后续可接入 westock / 腾讯股票 API 替换 updateMarketData）
 */
(function () {
  'use strict';

  // 模拟数据初始值
  var INITIAL = {
    hot:        { name: '广告营销', pct: '+8.37%' },
    zt:         108,    // 涨停家数
    dt:         0,      // 跌停家数
    flow:       705.44, // 主力资金净流入（亿元）
    fx:         6.75,   // 美元兑人民币
    upCount:    4748,
    flatCount:  101,
    downCount:  679
  };

  // 热门行业候选（轮换）
  var HOT_LIST = [
    { name: '广告营销', pct: '+8.37%' },
    { name: '人工智能', pct: '+5.62%' },
    { name: '半导体',   pct: '+4.18%' },
    { name: '游戏',     pct: '+3.91%' },
    { name: '新能源车', pct: '+2.74%' }
  ];

  // 涨跌方向（参考：截图显示涨势）
  var STATE = Object.assign({}, INITIAL);
  STATE.hot = Object.assign({}, INITIAL.hot);
  var HOT_INDEX = 0;

  var REFRESH_TIMER = null;   // 数据抖动定时器
  var SPIN_LOCK = false;

  // ========== DOM 引用 ==========
  function $(id) { return document.getElementById(id); }
  var floatEl, cardEl, refreshBtn, listEl;
  var ztEl, dtEl, flowEl, fxEl, upEl, flatEl, downEl, hotNameEl, hotPctEl;
  var barUpEl, barFlatEl, barDownEl;

  // ========== 数据更新（模拟） ==========
  function jitterValue(v, range, decimals) {
    var delta = (Math.random() - 0.5) * 2 * range;
    var next = v + delta;
    if (typeof v === 'number' && Number.isInteger(v)) {
      return Math.max(0, Math.round(next));
    }
    var factor = Math.pow(10, decimals == null ? 2 : decimals);
    return Math.max(0, Math.round(next * factor) / factor);
  }

  function flashElement(el, dir) {
    if (!el) return;
    var cls = dir === 'up' ? 'is-flash-up' : (dir === 'down' ? 'is-flash-down' : '');
    if (!cls) return;
    el.classList.remove('is-flash-up', 'is-flash-down');
    void el.offsetWidth;       // 触发重排重启动画
    el.classList.add(cls);
    setTimeout(function () { el.classList.remove(cls); }, 900);
  }

  function updateMarketData(opts) {
    opts = opts || {};
    var soft = opts.soft !== false;

    if (soft) {
      // 微抖动（自然涨跌）
      var oldZt = STATE.zt, oldDt = STATE.dt;
      var oldFlow = STATE.flow, oldFx = STATE.fx;
      var oldUp = STATE.upCount, oldDown = STATE.downCount, oldFlat = STATE.flatCount;

      STATE.zt        = jitterValue(STATE.zt, 3, 0);
      STATE.dt        = jitterValue(STATE.dt, 1, 0);
      STATE.flow      = jitterValue(STATE.flow, 8, 2);
      STATE.fx        = jitterValue(STATE.fx, 0.01, 2);
      STATE.upCount   = jitterValue(STATE.upCount, 25, 0);
      STATE.downCount = jitterValue(STATE.downCount, 12, 0);
      STATE.flatCount = jitterValue(STATE.flatCount, 4, 0);
    } else {
      // 手动刷新：整体偏移更大
      STATE.zt        = jitterValue(STATE.zt, 15, 0);
      STATE.dt        = jitterValue(STATE.dt, 5, 0);
      STATE.flow      = jitterValue(STATE.flow, 30, 2);
      STATE.fx        = jitterValue(STATE.fx, 0.02, 2);
      STATE.upCount   = jitterValue(STATE.upCount, 80, 0);
      STATE.downCount = jitterValue(STATE.downCount, 40, 0);
      STATE.flatCount = jitterValue(STATE.flatCount, 12, 0);
      // 切换热门行业
      HOT_INDEX = (HOT_INDEX + 1) % HOT_LIST.length;
      STATE.hot = Object.assign({}, HOT_LIST[HOT_INDEX]);
    }

    // 渲染到 DOM
    if (ztEl)    ztEl.textContent = STATE.zt;
    if (dtEl)    dtEl.textContent = STATE.dt;
    if (flowEl)  flowEl.textContent = (STATE.flow >= 0 ? '+' : '') + STATE.flow.toFixed(2) + '\u4ebf';
    if (fxEl)    fxEl.textContent = STATE.fx.toFixed(2);
    if (upEl)    upEl.textContent = STATE.upCount;
    if (flatEl)  flatEl.textContent = STATE.flatCount;
    if (downEl)  downEl.textContent = STATE.downCount;
    if (hotNameEl) hotNameEl.textContent = STATE.hot.name;
    if (hotPctEl)  hotPctEl.textContent = STATE.hot.pct;

    // 进度条
    var total = STATE.upCount + STATE.flatCount + STATE.downCount;
    if (total > 0 && barUpEl && barFlatEl && barDownEl) {
      barUpEl.style.width   = (STATE.upCount / total * 100).toFixed(1) + '%';
      barFlatEl.style.width = (STATE.flatCount / total * 100).toFixed(1) + '%';
      barDownEl.style.width = (STATE.downCount / total * 100).toFixed(1) + '%';
    }

    // 闪光提示（仅手动刷新时）
    if (!soft) {
      flashElement(ztEl, 'up');
      flashElement(flowEl, STATE.flow >= 0 ? 'up' : 'down');
      flashElement(fxEl, 'up');
      flashElement(upEl, 'up');
      flashElement(downEl, 'down');
    }
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

  // ========== 刷新按钮 ==========
  function bindRefresh() {
    if (!refreshBtn) return;
    refreshBtn.addEventListener('click', function (e) {
      e.stopPropagation();
      if (SPIN_LOCK) return;
      SPIN_LOCK = true;
      refreshBtn.classList.add('is-spin');
      updateMarketData({ soft: false });
      setTimeout(function () {
        refreshBtn.classList.remove('is-spin');
        SPIN_LOCK = false;
      }, 600);
    });
  }

  // ========== 定时模拟实时抖动 ==========
  function startTicker() {
    stopTicker();
    REFRESH_TIMER = setInterval(function () {
      updateMarketData({ soft: true });
    }, 4000);
  }
  function stopTicker() {
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

    if (!floatEl) return;

    // 首次渲染
    updateMarketData({ soft: false });
    bindHover();
    bindRefresh();
    startTicker();
  };
})();