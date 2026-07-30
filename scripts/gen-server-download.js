/**
 * gen-server-download.js — 生成服务器端下载脚本
 *
 * 扫描 JS 数据文件中所有剩余的外部图片 URL，
 * 生成一个 bash 脚本供远程服务器执行下载。
 *
 * 用法：node scripts/gen-server-download.js
 * 输出：scripts/server-download.sh
 */
var fs = require('fs');
var path = require('path');

var ROOT = path.resolve(__dirname, '..');
var JS_DIR = path.join(ROOT, 'js');

// 数据源配置
var SOURCES = [
  {
    file: 'projects.js',
    dir: 'behance',
    urlPrefixes: ['mir-s3-cdn-cf.behance.net']
  },
  {
    file: 'posts.js',
    dir: 'wechat',
    urlPrefixes: ['mmbiz.qpic.cn']
  }
];

function extractAllUrls(content, prefixes) {
  var urls = [];
  // 匹配双引号中所有 http(s) URL（可能被 markdown 语法 ![](...) 包裹）
  // 先提取所有双引号字符串，再从中找 URL
  var strRe = /"([^"]*)"/gi;
  var strMatch;
  while ((strMatch = strRe.exec(content)) !== null) {
    var strContent = strMatch[1];
    // 在字符串内容中找 http URL
    var urlRe = /(https?:\/\/[^\s)"'\\]+)/gi;
    var urlMatch;
    while ((urlMatch = urlRe.exec(strContent)) !== null) {
      var u = urlMatch[1];
      // 去掉末尾可能的 )（markdown 语法）
      u = u.replace(/\)+$/, '');
      for (var i = 0; i < prefixes.length; i++) {
        if (u.indexOf(prefixes[i]) !== -1 && urls.indexOf(u) === -1) {
          urls.push(u);
          break;
        }
      }
    }
  }
  return urls;
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

// ===== 主流程 =====
var allEntries = []; // {url, filename, dir, sourceFile}

SOURCES.forEach(function(src) {
  var jsPath = path.join(JS_DIR, src.file);
  if (!fs.existsSync(jsPath)) {
    console.log('文件不存在，跳过: ' + src.file);
    return;
  }
  var content = fs.readFileSync(jsPath, 'utf8');
  var urls = extractAllUrls(content, src.urlPrefixes);
  console.log(src.file + ': 发现 ' + urls.length + ' 个外部 URL');

  urls.forEach(function(u) {
    allEntries.push({
      url: u,
      filename: urlToFilename(u),
      dir: src.dir,
      sourceFile: src.file
    });
  });
});

console.log('\n总计: ' + allEntries.length + ' 个 URL 需要下载');

// 生成 bash 脚本
var lines = [];
lines.push('#!/bin/bash');
lines.push('# 服务器端批量下载图片脚本 — 由 gen-server-download.js 生成');
lines.push('# 在服务器上执行: bash server-download.sh');
lines.push('');
lines.push('WEB_ROOT="/usr/share/nginx/html"');
lines.push('');
lines.push('# 创建目录');
lines.push('mkdir -p "$WEB_ROOT/images/behance"');
lines.push('mkdir -p "$WEB_ROOT/images/wechat"');
lines.push('');
lines.push('SUCCESS=0');
lines.push('FAIL=0');
lines.push('');

// 按目录分组
var byDir = {};
allEntries.forEach(function(e) {
  if (!byDir[e.dir]) byDir[e.dir] = [];
  byDir[e.dir].push(e);
});

Object.keys(byDir).forEach(function(dir) {
  var entries = byDir[dir];
  lines.push('# === ' + dir + ' (' + entries.length + ' 张) ===');
  entries.forEach(function(e) {
    var destFile = '$WEB_ROOT/images/' + dir + '/' + e.filename;
    // 跳过已存在的文件
    lines.push('if [ ! -s "' + destFile + '" ]; then');
    lines.push('  curl -sL --connect-timeout 15 --max-time 60 -o "' + destFile + '" "' + e.url + '"');
    lines.push('  if [ -s "' + destFile + '" ]; then');
    lines.push('    SUCCESS=$((SUCCESS+1))');
    lines.push('  else');
    lines.push('    rm -f "' + destFile + '"');
    lines.push('    FAIL=$((FAIL+1))');
    lines.push('  fi');
    lines.push('else');
    lines.push('  SUCCESS=$((SUCCESS+1))');
    lines.push('fi');
  });
  lines.push('');
});

lines.push('echo "========================================"');
lines.push('echo "下载完成: 成功=$SUCCESS, 失败=$FAIL"');
lines.push('echo "Behance 图片: $(ls -1 $WEB_ROOT/images/behance/ | wc -l) 个文件"');
lines.push('echo "微信图片: $(ls -1 $WEB_ROOT/images/wechat/ | wc -l) 个文件"');
lines.push('echo "========================================"');

var scriptPath = path.join(ROOT, 'scripts', 'server-download.sh');
fs.writeFileSync(scriptPath, lines.join('\n'), 'utf8');
console.log('\n已生成服务器下载脚本: scripts/server-download.sh');
console.log('共 ' + allEntries.length + ' 条 curl 命令');

// 同时生成 URL→filename 映射文件（供本地重写 JS 文件用）
var mappingPath = path.join(ROOT, 'scripts', 'url-mapping.json');
var mapping = {};
allEntries.forEach(function(e) {
  mapping[e.url] = {
    filename: e.filename,
    localPath: 'images/' + e.dir + '/' + e.filename,
    dir: e.dir,
    sourceFile: e.sourceFile
  };
});
fs.writeFileSync(mappingPath, JSON.stringify(mapping, null, 2), 'utf8');
console.log('已生成 URL 映射文件: scripts/url-mapping.json');
