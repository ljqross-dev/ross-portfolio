/**
 * self-host-images.js — 批量下载所有外部图片到本地，重写数据文件为本地路径
 *
 * 用法：node scripts/self-host-images.js
 *
 * 处理范围：
 *   - js/dribbble.js   → images/dribbble/  (cdn.dribbble.com)
 *   - js/projects.js    → images/behance/   (mir-s3-cdn-cf.behance.net)
 *   - js/twitter.js     → images/twitter/   (混合 CDN)
 *   - js/instagram.js   → images/instagram/ (cdn.dribbble.com)
 *   - js/posts.js       → images/wechat/    (mmbiz.qpic.cn)
 *
 * 特性：
 *   - 并发控制（默认 5 并发）
 *   - 断点续传（已存在的文件跳过）
 *   - 失败自动跳过（保留原 URL 不改写）
 *   - 进度报告（每张图的状态）
 *   - 最终输出统计摘要
 */

var path = require('path');
var fs = require('fs');
var https = require('https');
var http = require('http');
var urlModule = require('url');

// ===== 配置 =====
var ROOT = path.resolve(__dirname, '..');
var JS_DIR = path.join(ROOT, 'js');
var IMG_DIR = path.join(ROOT, 'images');

// 各数据源对应的本地子目录和 URL 前缀匹配规则
var SOURCES = [
  {
    file: 'dribbble.js',
    dir: 'dribbble',
    urlPrefixes: ['cdn.dribbble.com']
  },
  {
    file: 'projects.js',
    dir: 'behance',
    urlPrefixes: ['mir-s3-cdn-cf.behance.net']
  },
  {
    file: 'twitter.js',
    dir: 'twitter',
    urlPrefixes: ['cdn.dribbble.com', 'mir-s3-cdn-cf.behance.net']
  },
  {
    file: 'instagram.js',
    dir: 'instagram',
    urlPrefixes: ['cdn.dribbble.com']
  },
  {
    file: 'posts.js',
    dir: 'wechat',
    urlPrefixes: ['mmbiz.qpic.cn']
  }
];

var CONCURRENCY = 5;       // 并发下载数
var TIMEOUT_MS = 30000;     // 单张超时 30s

// ===== 工具函数 =====

/** 从 URL 提取文件扩展名 */
function extFromUrl(u) {
  var pathname = urlModule.parse(u).pathname || '';
  // 取最后一个路径段的扩展名
  var last = pathname.split('/').pop() || '';
  var dotIdx = last.indexOf('.');
  if (dotIdx > 0) return last.substring(dotIdx).toLowerCase();
  // 无扩展名则根据 content-type 判断（下载后处理），默认 .jpg
  return '.jpg';
}

/** 从 URL 生成安全的文件名 */
function urlToFilename(urlStr, index) {
  // 优先从 query string 的 wx_fmt 参数提取格式（微信图片）
  var wxFmtMatch = urlStr.match(/[?&]wx_fmt=(\w+)/);
  if (wxFmtMatch) {
    var fmt = wxFmtMatch[1].toLowerCase();
    // gif/png/jpeg/jpg 直接用，webp 转 png（兼容性更好）
    if (fmt === 'webp') fmt = 'png';
    var hash = 0;
    for (var i = 0; i < urlStr.length; i++) {
      hash = ((hash << 5) - hash + urlStr.charCodeAt(i)) | 0;
    }
    return 'wx_' + Math.abs(hash).toString(16).slice(0, 12) + '.' + fmt;
  }

  try {
    var parsed = urlModule.parse(urlStr);
    var pathname = parsed.pathname || '';
    var last = pathname.split('/').pop();
    if (last && last.indexOf('.') > 0 && last.length < 100) {
      // 清理特殊字符
      return last.replace(/[^a-zA-Z0-9._-]/g, '_');
    }
  } catch(e) { /* ignore */ }
  // 回退：用序号 + URL hash 前 8 位
  var hash = 0;
  for (var i = 0; i < urlStr.length; i++) {
    hash = ((hash << 5) - hash + urlStr.charCodeAt(i)) | 0;
  }
  return 'img_' + Math.abs(hash).toString(16).slice(0, 8) + '_' + index + '.jpg';
}

/** 检查 URL 是否属于某个 source 的外部域名 */
function isExternalUrl(urlStr, prefixes) {
  if (!urlStr || !urlStr.startsWith('http')) return false;
  for (var i = 0; i < prefixes.length; i++) {
    if (urlStr.indexOf(prefixes[i]) !== -1) return true;
  }
  return false;
}

/** 从 JS 文件内容中提取所有外部图片 URL（去重） */
function extractUrls(content, prefixes) {
  var urls = [];
  // 匹配 "https://..." 格式的 URL（JS 字符串值）
  // 支持带 query string 的 URL（如 mmbiz.qpic.cn/...?wx_fmt=png&from=appmsg）
  var re = /"(https?:\/\/[^"]+\.(jpg|jpeg|png|gif|webp|mp4)[^"]*)"/gi;
  var m;
  while ((m = re.exec(content)) !== null) {
    var u = m[1];
    if (isExternalUrl(u, prefixes) && urls.indexOf(u) === -1) {
      urls.push(u);
    }
  }
  // 额外匹配 mmbiz.qpic.cn 的 URL（带 query string，不含常见图片扩展名）
  var re2 = /"(https?:\/\/mmbiz\.qpic\.cn\/[^"]+)"/gi;
  var m2;
  while ((m2 = re2.exec(content)) !== null) {
    var u2 = m2[1];
    if (isExternalUrl(u2, prefixes) && urls.indexOf(u2) === -1) {
      urls.push(u2);
    }
  }
  return urls;
}

/** 下载单个文件，返回 Promise<{ok, localPath, size}> */
function downloadFile(urlStr, destPath) {
  return new Promise(function(resolve) {
    // 如果文件已存在且大小 > 0，跳过
    try {
      if (fs.existsSync(destPath)) {
        var stat = fs.statSync(destPath);
        if (stat.size > 0) {
          resolve({ ok: true, localPath: destPath, size: stat.size, skipped: true });
          return;
        }
      }
    } catch(e) { /* 继续下载 */ }

    var proto = urlStr.startsWith('https') ? https : http;
    var req = proto.get(urlStr, { timeout: TIMEOUT_MS }, function(res) {
      if (res.statusCode >= 300 && res.statusCode < 400 && res.headers.location) {
        // 跟踪重定向（最多 1 次）
        downloadFile(res.headers.location, destPath).then(resolve);
        return;
      }
      if (res.statusCode !== 200) {
        resolve({ ok: false, url: urlStr, status: res.statusCode });
        return;
      }

      var chunks = [];
      res.on('data', function(c) { chunks.push(c); });
      res.on('end', function() {
        try {
          var buf = Buffer.concat(chunks);
          fs.writeFileSync(destPath, buf);
          resolve({ ok: true, localPath: destPath, size: buf.length, skipped: false });
        } catch(e) {
          resolve({ ok: false, url: urlStr, error: e.message });
        }
      });
      res.on('error', function(e) {
        resolve({ ok: false, url: urlStr, error: e.message });
      });
    });

    req.on('timeout', function() {
      req.destroy();
      resolve({ ok: false, url: urlStr, error: 'TIMEOUT' });
    });
    req.on('error', function(e) {
      resolve({ ok: false, url: urlStr, error: e.message });
    });
  });
}

/** 并发控制器：最多 n 个同时运行 */
function limitConcurrency(tasks, n) {
  return new Promise(function(resolve) {
    var results = [];
    var running = 0;
    var idx = 0;

    function next() {
      while (running < n && idx < tasks.length) {
        var curIdx = idx++;
        running++;
        tasks[curIdx]().then(function(result) {
          results[curIdx] = result;
          running--;
          // 进度报告
          var done = results.filter(function(r) { return r !== undefined; }).length;
          process.stdout.write('\r  [' + done + '/' + tasks.length + '] 下载中...');
          next();
        });
      }
      if (running === 0 && idx === tasks.length) {
        console.log(''); // 换行
        resolve(results);
      }
    }
    next();
  });
}

/** 重写 JS 文件中的 URL 为本地路径 */
function rewriteJsFile(filePath, urlMapping, outputDirName) {
  var content = fs.readFileSync(filePath, 'utf8');
  var changed = 0;
  Object.keys(urlMapping).forEach(function(urlStr) {
    var localPath = urlMapping[urlStr];
    if (localPath && content.indexOf(urlStr) !== -1) {
      // 将绝对 URL 替换为相对路径
      var relPath = 'images/' + outputDirName + '/' + path.basename(localPath);
      content = content.split(urlStr).join(relPath);
      changed++;
    }
  });
  if (changed > 0) {
    fs.writeFileSync(filePath, content, 'utf8');
  }
  return changed;
}

// ===== 主流程 =====

async function main() {
  console.log('========================================');
  console.log('  Ross Site — 图片自托管批量下载工具');
  console.log('========================================\n');

  var totalDownloaded = 0;
  var totalSkipped = 0;
  var totalFailed = 0;
  var startTime = Date.now();

  for (var s = 0; s < SOURCES.length; s++) {
    var src = SOURCES[s];
    var jsPath = path.join(JS_DIR, src.file);
    var outDir = path.join(IMG_DIR, src.dir);

    console.log('--- [' + (s+1) + '/' + SOURCES.length + '] 处理 ' + src.file + ' ---');

    // 读取 JS 文件
    if (!fs.existsSync(jsPath)) {
      console.log('  文件不存在，跳过: ' + jsPath);
      continue;
    }

    var content = fs.readFileSync(jsPath, 'utf8');

    // 提取外部 URL
    var urls = extractUrls(content, src.urlPrefixes);
    console.log('  发现 ' + urls.length + ' 个外部图片 URL');

    if (urls.length === 0) continue;

    // 确保输出目录存在
    if (!fs.existsSync(outDir)) {
      fs.mkdirSync(outDir, { recursive: true });
    }

    // 构建下载任务
    var tasks = urls.map(function(urlStr, i) {
      var filename = urlToFilename(urlStr, i);
      var destPath = path.join(outDir, filename);
      return function() { return downloadFile(urlStr, destPath); };
    });

    // 执行并发下载
    console.log('  开始下载（并发=' + CONCURRENCY + '）...');
    var results = await limitConcurrency(tasks, CONCURRENCY);

    // 构建成功映射：URL -> 本地路径
    var urlMapping = {};
    var failedUrls = [];

    results.forEach(function(r, i) {
      if (r.ok) {
        urlMapping[urls[i]] = r.localPath;
        if (r.skipped) totalSkipped++;
        else totalDownloaded++;
      } else {
        failedUrls.push(urls[i]);
        totalFailed++;
      }
    });

    // 输出本源统计
    console.log('  成功: ' + (totalDownloaded + totalSkipped) + ' (新下载 ' + totalDownloaded + ', 已有跳过 ' + totalSkipped + ')');
    if (failedUrls.length > 0) {
      console.log('  失败: ' + failedUrls.length + ' (将保留原始 URL)');
    }

    // 重写 JS 文件
    var changed = rewriteJsFile(jsPath, urlMapping, src.dir);
    console.log('  重写 ' + src.file + ': 替换了 ' + changed + ' 个 URL 为本地路径\n');
  }

  // 最终统计
  var elapsed = ((Date.now() - startTime) / 1000).toFixed(1);
  console.log('========================================');
  console.log('  完成！');
  console.log('  新下载: ' + totalDownloaded + ' 张');
  console.log('  已有跳过: ' + totalSkipped + ' 张');
  console.log('  失败(保留原URL): ' + totalFailed + ' 张');
  console.log('  耗时: ' + elapsed + 's');
  console.log('  图片存储在: images/dribbble/, images/behance/, images/twitter/, images/instagram/, images/wechat/');
  console.log('========================================');
}

main().catch(function(err) {
  console.error('致命错误:', err);
  process.exit(1);
});
