/* ============================================================
   Ross的研习社 — 轻量 Markdown 渲染器（零依赖）
   支持：标题 / 粗斜体 / 行内代码 / 代码块 / 引用 / 有序无序列表
        链接 / 图片 / 分隔线 / 表格 / 删除线 / 段落
   ============================================================ */
(function () {
  'use strict';

  function escapeHtml(s) {
    return String(s).replace(/[&<>"']/g, function (c) {
      return { '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;' }[c];
    });
  }

  /* 行内语法 */
  function inline(text) {
    var out = escapeHtml(text);

    // 图片 ![alt](url)
    out = out.replace(/!\[([^\]]*)\]\(([^)\s]+)(?:\s+&quot;([^&]*)&quot;)?\)/g, function (_, alt, url) {
      return '<img src="' + url + '" alt="' + alt + '" loading="lazy" />';
    });

    // 链接 [text](url)
    out = out.replace(/\[([^\]]+)\]\(([^)\s]+)\)/g, function (_, label, url) {
      var external = /^https?:\/\//.test(url);
      return '<a href="' + url + '"' + (external ? ' target="_blank" rel="noopener"' : '') + '>' + label + '</a>';
    });

    // 行内代码
    out = out.replace(/`([^`]+)`/g, '<code>$1</code>');

    // 粗体 / 斜体 / 删除线
    out = out.replace(/\*\*\*([^*]+)\*\*\*/g, '<strong><em>$1</em></strong>');
    out = out.replace(/\*\*([^*]+)\*\*/g, '<strong>$1</strong>');
    out = out.replace(/\*([^*]+)\*/g, '<em>$1</em>');
    out = out.replace(/~~([^~]+)~~/g, '<del>$1</del>');

    return out;
  }

  function renderMarkdown(src) {
    var lines = String(src || '').replace(/\r\n?/g, '\n').split('\n');
    var html = [];
    var i = 0;

    function isTableDivider(line) {
      return /^\s*\|?\s*:?-{3,}:?\s*(\|\s*:?-{3,}:?\s*)+\|?\s*$/.test(line);
    }

    while (i < lines.length) {
      var line = lines[i];

      // 空行
      if (/^\s*$/.test(line)) { i++; continue; }

      // 代码块 ```
      var fence = line.match(/^```(\w*)\s*$/);
      if (fence) {
        var lang = fence[1] || '';
        var code = [];
        i++;
        while (i < lines.length && !/^```\s*$/.test(lines[i])) { code.push(lines[i]); i++; }
        i++; // 跳过结束 ```
        html.push('<pre class="md-pre"' + (lang ? ' data-lang="' + escapeHtml(lang) + '"' : '') + '><code>' + escapeHtml(code.join('\n')) + '</code></pre>');
        continue;
      }

      // 标题
      var h = line.match(/^(#{1,6})\s+(.*)$/);
      if (h) {
        var level = h[1].length;
        html.push('<h' + level + '>' + inline(h[2].replace(/\s+#+\s*$/, '')) + '</h' + level + '>');
        i++;
        continue;
      }

      // 分隔线
      if (/^\s*(-{3,}|\*{3,}|_{3,})\s*$/.test(line)) { html.push('<hr />'); i++; continue; }

      // 引用
      if (/^\s*>\s?/.test(line)) {
        var quote = [];
        while (i < lines.length && /^\s*>\s?/.test(lines[i])) {
          quote.push(lines[i].replace(/^\s*>\s?/, ''));
          i++;
        }
        html.push('<blockquote>' + renderMarkdown(quote.join('\n')) + '</blockquote>');
        continue;
      }

      // 表格
      if (line.indexOf('|') !== -1 && i + 1 < lines.length && isTableDivider(lines[i + 1])) {
        var headCells = line.split('|').map(function (c) { return c.trim(); }).filter(function (c, idx, arr) {
          return !(c === '' && (idx === 0 || idx === arr.length - 1));
        });
        var aligns = lines[i + 1].split('|').map(function (c) { return c.trim(); }).filter(function (c) { return c !== ''; })
          .map(function (c) {
            if (/^:-+:$/.test(c)) return 'center';
            if (/^-+:$/.test(c)) return 'right';
            return 'left';
          });
        i += 2;
        var rows = [];
        while (i < lines.length && lines[i].indexOf('|') !== -1 && !/^\s*$/.test(lines[i])) {
          var cells = lines[i].split('|').map(function (c) { return c.trim(); }).filter(function (c, idx, arr) {
            return !(c === '' && (idx === 0 || idx === arr.length - 1));
          });
          rows.push(cells);
          i++;
        }
        var t = '<div class="md-table-wrap"><table><thead><tr>';
        headCells.forEach(function (c, idx) {
          t += '<th style="text-align:' + (aligns[idx] || 'left') + '">' + inline(c) + '</th>';
        });
        t += '</tr></thead><tbody>';
        rows.forEach(function (r) {
          t += '<tr>';
          r.forEach(function (c, idx) {
            t += '<td style="text-align:' + (aligns[idx] || 'left') + '">' + inline(c) + '</td>';
          });
          t += '</tr>';
        });
        t += '</tbody></table></div>';
        html.push(t);
        continue;
      }

      // 无序列表
      if (/^\s*[-*+]\s+/.test(line)) {
        var ul = [];
        while (i < lines.length && /^\s*[-*+]\s+/.test(lines[i])) {
          ul.push('<li>' + inline(lines[i].replace(/^\s*[-*+]\s+/, '')) + '</li>');
          i++;
        }
        html.push('<ul>' + ul.join('') + '</ul>');
        continue;
      }

      // 有序列表
      if (/^\s*\d+\.\s+/.test(line)) {
        var ol = [];
        while (i < lines.length && /^\s*\d+\.\s+/.test(lines[i])) {
          ol.push('<li>' + inline(lines[i].replace(/^\s*\d+\.\s+/, '')) + '</li>');
          i++;
        }
        html.push('<ol>' + ol.join('') + '</ol>');
        continue;
      }

      // 段落（合并连续行）
      var para = [line];
      i++;
      while (i < lines.length && !/^\s*$/.test(lines[i]) &&
             !/^(#{1,6})\s/.test(lines[i]) && !/^```/.test(lines[i]) &&
             !/^\s*[-*+]\s+/.test(lines[i]) && !/^\s*\d+\.\s+/.test(lines[i]) &&
             !/^\s*>\s?/.test(lines[i]) && !/^\s*(-{3,}|\*{3,}|_{3,})\s*$/.test(lines[i])) {
        para.push(lines[i]);
        i++;
      }
      html.push('<p>' + inline(para.join(' ')) + '</p>');
    }

    return html.join('\n');
  }

  window.renderMarkdown = renderMarkdown;
})();
