/**
 * rewrite-all-urls.js — 扫描所有 JS 数据文件中的外部图片 URL，
 * 检查本地是否有对应文件，有则替换为本地路径。
 *
 * 处理文件：dribbble.js, projects.js, twitter.js, instagram.js, posts.js
 * CDN 域名：cdn.dribbble.com, mir-s3-cdn-cf.behance.net, mmbiz.qpic.cn
 *
 * 用法：node scripts/rewrite-all-urls.js
 */
var fs = require('fs');
var path = require('path');

var ROOT = path.resolve(__dirname, '..');
var JS_DIR = path.join(ROOT, 'js');
var IMG_DIR = path.join(ROOT, 'images');

// CDN 域名到本地目录的映射
var CDN_MAP = [
  { prefix: 'cdn.dribbble.com', dir: 'dribbble' },
  { prefix: 'mir-s3-cdn-cf.behance.net', dir: 'behance' },
  { prefix: 'mmbiz.qpic.cn', dir: 'wechat' }
];

// 要处理的文件列表
var FILES = ['dribbble.js', 'projects.js', 'twitter.js', 'instagram.js', 'posts.js'];

function getLocalDirForUrl(url) {
  for (var i = 0; i < CDN_MAP.length; i++) {
    if (url.indexOf(CDN_MAP[i].prefix) !== -1) {
      return CDN_MAP[i].dir;
    }
  }
  return null;
}

function urlToFilename(urlStr) {
  // 微信图片：从 wx_fmt 提取格式
  var wxFmtMatch = urlStr.match(/[?&]wx_fmt=(\w+)/);
  if (wxFmtMatch) {
    var fmt = wxFmtMatch[1].toLowerCase();
    if (fmt === 'webp') fmt = 'png';
    var hash = 0;
    for (var i = 0; i < urlStr.length; i++) {
      hash = ((hash << 5) - hash + urlStr.charCodeAt(i)) | 0;
    }
    return 'wx_' + Math.abs(hash).toString(16).slice(0, 12) + '.' + fmt;
  }

  // 普通图片：取路径最后一段
  try {
    var pathname = urlStr.split('?')[0];
    var last = pathname.split('/').pop();
    if (last && last.indexOf('.') > 0 && last.length < 100) {
      return last.replace(/[^a-zA-Z0-9._-]/g, '_');
    }
  } catch(e) {}

  var hash = 0;
  for (var i = 0; i < urlStr.length; i++) {
    hash = ((hash << 5) - hash + urlStr.charCodeAt(i)) | 0;
  }
  return 'img_' + Math.abs(hash).toString(16).slice(0, 8) + '.jpg';
}

// 从文件内容中提取所有外部 CDN URL（去重）
function extractExternalUrls(content) {
  var urls = [];
  var strRe = /"([^"]*)"/gi;
  var strMatch;
  while ((strMatch = strRe.exec(content)) !== null) {
    var strContent = strMatch[1];
    var urlRe = /(https?:\/\/[^\s)"'\\]+)/gi;
    var urlMatch;
    while ((urlMatch = urlRe.exec(strContent)) !== null) {
      var u = urlMatch[1].replace(/\)+$/, '');
      var dir = getLocalDirForUrl(u);
      if (dir && urls.indexOf(u) === -1) {
        urls.push(u);
      }
    }
  }
  return urls;
}

// ===== 主流程 =====
var totalReplaced = 0;
var totalSkipped = 0;
var totalAlreadyLocal = 0;

FILES.forEach(function(fileName) {
  var filePath = path.join(JS_DIR, fileName);
  if (!fs.existsSync(filePath)) {
    console.log(fileName + ': 文件不存在，跳过');
    return;
  }

  var content = fs.readFileSync(filePath, 'utf8');
  var urls = extractExternalUrls(content);

  if (urls.length === 0) {
    // 检查是否已经有本地路径
    var localCount = 0;
    CDN_MAP.forEach(function(c) {
      localCount += (content.match(new RegExp('images/' + c.dir + '/', 'g')) || []).length;
    });
    console.log(fileName + ': 无外部 URL' + (localCount > 0 ? ' (' + localCount + ' 个已为本地路径)' : ''));
    totalAlreadyLocal += localCount;
    return;
  }

  var replaced = 0;
  var skipped = 0;

  urls.forEach(function(url) {
    var dir = getLocalDirForUrl(url);
    var filename = urlToFilename(url);
    var localImgPath = path.join(IMG_DIR, dir, filename);

    // 检查本地是否有这个文件
    var localExists = false;
    try {
      if (fs.existsSync(localImgPath) && fs.statSync(localImgPath).size > 0) {
        localExists = true;
      }
    } catch(e) {}

    if (localExists) {
      var relPath = 'images/' + dir + '/' + filename;
      if (content.indexOf(url) !== -1) {
        content = content.split(url).join(relPath);
        replaced++;
      }
    } else {
      skipped++;
    }
  });

  if (replaced > 0) {
    fs.writeFileSync(filePath, content, 'utf8');
  }

  console.log(fileName + ': 替换 ' + replaced + ' 个 URL' + (skipped > 0 ? ' (' + skipped + ' 个本地文件不存在，保留原URL)' : ''));
  totalReplaced += replaced;
  totalSkipped += skipped;
});

console.log('\n========================================');
console.log('总计替换: ' + totalReplaced + ' 个 URL');
console.log('本地文件不存在: ' + totalSkipped + ' 个');
console.log('已为本地路径: ' + totalAlreadyLocal + ' 个');
console.log('========================================');
