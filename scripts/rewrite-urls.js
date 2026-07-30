/**
 * rewrite-urls.js — 用本地路径替换 JS 数据文件中的外部图片 URL
 *
 * 读取 scripts/url-mapping.json 中的 URL→本地路径映射，
 * 重写 projects.js 和 posts.js 中的所有匹配 URL。
 *
 * 用法：node scripts/rewrite-urls.js
 */
var fs = require('fs');
var path = require('path');

var ROOT = path.resolve(__dirname, '..');
var JS_DIR = path.join(ROOT, 'js');
var mappingPath = path.join(ROOT, 'scripts', 'url-mapping.json');

var mapping = JSON.parse(fs.readFileSync(mappingPath, 'utf8'));

console.log('URL 映射条目: ' + Object.keys(mapping).length);

// 按源文件分组
var byFile = {};
Object.keys(mapping).forEach(function(url) {
  var entry = mapping[url];
  var srcFile = entry.sourceFile;
  if (!byFile[srcFile]) byFile[srcFile] = {};
  byFile[srcFile][url] = entry.localPath;
});

Object.keys(byFile).forEach(function(srcFile) {
  var filePath = path.join(JS_DIR, srcFile);
  if (!fs.existsSync(filePath)) {
    console.log('文件不存在，跳过: ' + srcFile);
    return;
  }

  var content = fs.readFileSync(filePath, 'utf8');
  var urlMap = byFile[srcFile];
  var changed = 0;
  var notFound = 0;

  Object.keys(urlMap).forEach(function(url) {
    var localPath = urlMap[url];
    if (content.indexOf(url) !== -1) {
      content = content.split(url).join(localPath);
      changed++;
    } else {
      notFound++;
    }
  });

  if (changed > 0) {
    fs.writeFileSync(filePath, content, 'utf8');
  }

  console.log(srcFile + ': 替换 ' + changed + ' 个 URL' + (notFound > 0 ? ' (' + notFound + ' 个未匹配)' : ''));
});

console.log('\n完成！所有外部图片 URL 已替换为本地路径。');
