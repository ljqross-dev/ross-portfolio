#!/bin/bash
# 服务器端批量下载图片脚本 — 由 gen-server-download.js 生成
# 在服务器上执行: bash server-download.sh

WEB_ROOT="/usr/share/nginx/html"

# 创建目录
mkdir -p "$WEB_ROOT/images/behance"
mkdir -p "$WEB_ROOT/images/wechat"

SUCCESS=0
FAIL=0

# === behance (323 张) ===
if [ ! -s "$WEB_ROOT/images/behance/aaa722248383365.69f0744822bb9.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/aaa722248383365.69f0744822bb9.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/aaa722248383365.69f0744822bb9.png"
  if [ -s "$WEB_ROOT/images/behance/aaa722248383365.69f0744822bb9.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/aaa722248383365.69f0744822bb9.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/18bf44248383365.69f0744824468.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/18bf44248383365.69f0744824468.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/18bf44248383365.69f0744824468.png"
  if [ -s "$WEB_ROOT/images/behance/18bf44248383365.69f0744824468.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/18bf44248383365.69f0744824468.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/f2a322248383365.69f0744825c0e.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/f2a322248383365.69f0744825c0e.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/f2a322248383365.69f0744825c0e.png"
  if [ -s "$WEB_ROOT/images/behance/f2a322248383365.69f0744825c0e.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/f2a322248383365.69f0744825c0e.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/7c92c5248383365.69f0744820c4a.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/7c92c5248383365.69f0744820c4a.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/7c92c5248383365.69f0744820c4a.png"
  if [ -s "$WEB_ROOT/images/behance/7c92c5248383365.69f0744820c4a.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/7c92c5248383365.69f0744820c4a.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/2533a2248383365.69f0744826b58.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/2533a2248383365.69f0744826b58.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/2533a2248383365.69f0744826b58.png"
  if [ -s "$WEB_ROOT/images/behance/2533a2248383365.69f0744826b58.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/2533a2248383365.69f0744826b58.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/450bde248383365.69f0744822482.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/450bde248383365.69f0744822482.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/450bde248383365.69f0744822482.png"
  if [ -s "$WEB_ROOT/images/behance/450bde248383365.69f0744822482.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/450bde248383365.69f0744822482.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/b7a733248383365.69f074482641b.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/b7a733248383365.69f074482641b.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/b7a733248383365.69f074482641b.png"
  if [ -s "$WEB_ROOT/images/behance/b7a733248383365.69f074482641b.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/b7a733248383365.69f074482641b.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/2be720248383365.69f07448214dc.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/2be720248383365.69f07448214dc.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/2be720248383365.69f07448214dc.png"
  if [ -s "$WEB_ROOT/images/behance/2be720248383365.69f07448214dc.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/2be720248383365.69f07448214dc.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/04eb75248383365.69f07448234a3.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/04eb75248383365.69f07448234a3.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/04eb75248383365.69f07448234a3.png"
  if [ -s "$WEB_ROOT/images/behance/04eb75248383365.69f07448234a3.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/04eb75248383365.69f07448234a3.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/23593b248383365.69f0744821d51.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/23593b248383365.69f0744821d51.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/23593b248383365.69f0744821d51.png"
  if [ -s "$WEB_ROOT/images/behance/23593b248383365.69f0744821d51.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/23593b248383365.69f0744821d51.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/266256248383365.69f0744823cd5.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/266256248383365.69f0744823cd5.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/266256248383365.69f0744823cd5.png"
  if [ -s "$WEB_ROOT/images/behance/266256248383365.69f0744823cd5.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/266256248383365.69f0744823cd5.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/09a7ee248383365.69f07448254c4.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/09a7ee248383365.69f07448254c4.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/09a7ee248383365.69f07448254c4.png"
  if [ -s "$WEB_ROOT/images/behance/09a7ee248383365.69f07448254c4.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/09a7ee248383365.69f07448254c4.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/369efd248383365.69f0744824bd2.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/369efd248383365.69f0744824bd2.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/369efd248383365.69f0744824bd2.png"
  if [ -s "$WEB_ROOT/images/behance/369efd248383365.69f0744824bd2.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/369efd248383365.69f0744824bd2.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/11dcd1235401961.68d63f4c46571.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/11dcd1235401961.68d63f4c46571.png" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/11dcd1235401961.68d63f4c46571.png"
  if [ -s "$WEB_ROOT/images/behance/11dcd1235401961.68d63f4c46571.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/11dcd1235401961.68d63f4c46571.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/beeb94235401961.68d63f4c47f47.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/beeb94235401961.68d63f4c47f47.png" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/beeb94235401961.68d63f4c47f47.png"
  if [ -s "$WEB_ROOT/images/behance/beeb94235401961.68d63f4c47f47.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/beeb94235401961.68d63f4c47f47.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/239569235401961.68d63f4c4fbc0.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/239569235401961.68d63f4c4fbc0.png" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/239569235401961.68d63f4c4fbc0.png"
  if [ -s "$WEB_ROOT/images/behance/239569235401961.68d63f4c4fbc0.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/239569235401961.68d63f4c4fbc0.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/bd56eb235401961.68d63f4c45df3.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/bd56eb235401961.68d63f4c45df3.png" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/bd56eb235401961.68d63f4c45df3.png"
  if [ -s "$WEB_ROOT/images/behance/bd56eb235401961.68d63f4c45df3.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/bd56eb235401961.68d63f4c45df3.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/fce96c235401961.68d63f4c46db8.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/fce96c235401961.68d63f4c46db8.png" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/fce96c235401961.68d63f4c46db8.png"
  if [ -s "$WEB_ROOT/images/behance/fce96c235401961.68d63f4c46db8.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/fce96c235401961.68d63f4c46db8.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/93acaa235401961.68d63f4c48947.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/93acaa235401961.68d63f4c48947.png" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/93acaa235401961.68d63f4c48947.png"
  if [ -s "$WEB_ROOT/images/behance/93acaa235401961.68d63f4c48947.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/93acaa235401961.68d63f4c48947.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/afe5d4235401961.68d63f4c4a164.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/afe5d4235401961.68d63f4c4a164.png" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/afe5d4235401961.68d63f4c4a164.png"
  if [ -s "$WEB_ROOT/images/behance/afe5d4235401961.68d63f4c4a164.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/afe5d4235401961.68d63f4c4a164.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/818d1e235401961.68d63f4c505a4.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/818d1e235401961.68d63f4c505a4.png" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/818d1e235401961.68d63f4c505a4.png"
  if [ -s "$WEB_ROOT/images/behance/818d1e235401961.68d63f4c505a4.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/818d1e235401961.68d63f4c505a4.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/e16f36235401961.68d63f4c4e19a.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/e16f36235401961.68d63f4c4e19a.png" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/e16f36235401961.68d63f4c4e19a.png"
  if [ -s "$WEB_ROOT/images/behance/e16f36235401961.68d63f4c4e19a.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/e16f36235401961.68d63f4c4e19a.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/c41a52235401961.68d63f4c4755a.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/c41a52235401961.68d63f4c4755a.png" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/c41a52235401961.68d63f4c4755a.png"
  if [ -s "$WEB_ROOT/images/behance/c41a52235401961.68d63f4c4755a.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/c41a52235401961.68d63f4c4755a.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/9428ae235401961.68d63f4c4ab45.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/9428ae235401961.68d63f4c4ab45.png" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/9428ae235401961.68d63f4c4ab45.png"
  if [ -s "$WEB_ROOT/images/behance/9428ae235401961.68d63f4c4ab45.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/9428ae235401961.68d63f4c4ab45.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/50460f235401961.68d63f4c4c5f7.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/50460f235401961.68d63f4c4c5f7.png" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/50460f235401961.68d63f4c4c5f7.png"
  if [ -s "$WEB_ROOT/images/behance/50460f235401961.68d63f4c4c5f7.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/50460f235401961.68d63f4c4c5f7.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/54b8c4235401961.68d63f4c4be9f.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/54b8c4235401961.68d63f4c4be9f.png" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/54b8c4235401961.68d63f4c4be9f.png"
  if [ -s "$WEB_ROOT/images/behance/54b8c4235401961.68d63f4c4be9f.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/54b8c4235401961.68d63f4c4be9f.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/dec692235401961.68d63f4c49a08.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/dec692235401961.68d63f4c49a08.png" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/dec692235401961.68d63f4c49a08.png"
  if [ -s "$WEB_ROOT/images/behance/dec692235401961.68d63f4c49a08.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/dec692235401961.68d63f4c49a08.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/f3690f235401961.68d63f4c4d7cd.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/f3690f235401961.68d63f4c4d7cd.png" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/f3690f235401961.68d63f4c4d7cd.png"
  if [ -s "$WEB_ROOT/images/behance/f3690f235401961.68d63f4c4d7cd.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/f3690f235401961.68d63f4c4d7cd.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/282490235401961.68d63f4c50fbc.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/282490235401961.68d63f4c50fbc.png" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/282490235401961.68d63f4c50fbc.png"
  if [ -s "$WEB_ROOT/images/behance/282490235401961.68d63f4c50fbc.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/282490235401961.68d63f4c50fbc.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/07d945235401961.68d63f4c4cfc5.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/07d945235401961.68d63f4c4cfc5.png" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/07d945235401961.68d63f4c4cfc5.png"
  if [ -s "$WEB_ROOT/images/behance/07d945235401961.68d63f4c4cfc5.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/07d945235401961.68d63f4c4cfc5.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/871752235401961.68d63f4c4e9a8.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/871752235401961.68d63f4c4e9a8.png" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/871752235401961.68d63f4c4e9a8.png"
  if [ -s "$WEB_ROOT/images/behance/871752235401961.68d63f4c4e9a8.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/871752235401961.68d63f4c4e9a8.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/eea0a1235401961.68d63f4c49210.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/eea0a1235401961.68d63f4c49210.png" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/eea0a1235401961.68d63f4c49210.png"
  if [ -s "$WEB_ROOT/images/behance/eea0a1235401961.68d63f4c49210.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/eea0a1235401961.68d63f4c49210.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/ad64ec235401961.68d63f4c4f1c2.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/ad64ec235401961.68d63f4c4f1c2.png" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/ad64ec235401961.68d63f4c4f1c2.png"
  if [ -s "$WEB_ROOT/images/behance/ad64ec235401961.68d63f4c4f1c2.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/ad64ec235401961.68d63f4c4f1c2.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/4202dc235401961.68d63f4c4b4d1.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/4202dc235401961.68d63f4c4b4d1.png" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/4202dc235401961.68d63f4c4b4d1.png"
  if [ -s "$WEB_ROOT/images/behance/4202dc235401961.68d63f4c4b4d1.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/4202dc235401961.68d63f4c4b4d1.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/2ec65f201401399.6673da3a2d61a.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/2ec65f201401399.6673da3a2d61a.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/2ec65f201401399.6673da3a2d61a.jpg"
  if [ -s "$WEB_ROOT/images/behance/2ec65f201401399.6673da3a2d61a.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/2ec65f201401399.6673da3a2d61a.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/af81c1201401399.6673da3a2ff96.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/af81c1201401399.6673da3a2ff96.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/af81c1201401399.6673da3a2ff96.jpg"
  if [ -s "$WEB_ROOT/images/behance/af81c1201401399.6673da3a2ff96.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/af81c1201401399.6673da3a2ff96.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/c97327201401399.6673da3a2df25.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/c97327201401399.6673da3a2df25.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/c97327201401399.6673da3a2df25.png"
  if [ -s "$WEB_ROOT/images/behance/c97327201401399.6673da3a2df25.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/c97327201401399.6673da3a2df25.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/903612201401399.6673da3a32a90.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/903612201401399.6673da3a32a90.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/903612201401399.6673da3a32a90.png"
  if [ -s "$WEB_ROOT/images/behance/903612201401399.6673da3a32a90.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/903612201401399.6673da3a32a90.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/7dbc1e201401399.6673da3a2e824.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/7dbc1e201401399.6673da3a2e824.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/7dbc1e201401399.6673da3a2e824.png"
  if [ -s "$WEB_ROOT/images/behance/7dbc1e201401399.6673da3a2e824.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/7dbc1e201401399.6673da3a2e824.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/a9a4d3201401399.6673da3a2f40a.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/a9a4d3201401399.6673da3a2f40a.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/a9a4d3201401399.6673da3a2f40a.png"
  if [ -s "$WEB_ROOT/images/behance/a9a4d3201401399.6673da3a2f40a.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/a9a4d3201401399.6673da3a2f40a.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/56af4f201401399.6673da3a3086b.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/56af4f201401399.6673da3a3086b.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/56af4f201401399.6673da3a3086b.png"
  if [ -s "$WEB_ROOT/images/behance/56af4f201401399.6673da3a3086b.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/56af4f201401399.6673da3a3086b.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/4d3f71201401399.6673da3a3153a.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/4d3f71201401399.6673da3a3153a.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/4d3f71201401399.6673da3a3153a.png"
  if [ -s "$WEB_ROOT/images/behance/4d3f71201401399.6673da3a3153a.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/4d3f71201401399.6673da3a3153a.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/f17db3201401399.6673da3a32022.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/f17db3201401399.6673da3a32022.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/f17db3201401399.6673da3a32022.png"
  if [ -s "$WEB_ROOT/images/behance/f17db3201401399.6673da3a32022.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/f17db3201401399.6673da3a32022.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/6cfb8b201401399.6673da3a334e3.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/6cfb8b201401399.6673da3a334e3.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/6cfb8b201401399.6673da3a334e3.png"
  if [ -s "$WEB_ROOT/images/behance/6cfb8b201401399.6673da3a334e3.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/6cfb8b201401399.6673da3a334e3.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/805a1f201401399.6673da3a38470.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/805a1f201401399.6673da3a38470.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/805a1f201401399.6673da3a38470.png"
  if [ -s "$WEB_ROOT/images/behance/805a1f201401399.6673da3a38470.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/805a1f201401399.6673da3a38470.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/8a090b201401399.6673da3a38e9c.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/8a090b201401399.6673da3a38e9c.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/8a090b201401399.6673da3a38e9c.png"
  if [ -s "$WEB_ROOT/images/behance/8a090b201401399.6673da3a38e9c.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/8a090b201401399.6673da3a38e9c.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/27ada3201401399.6673da3a33d0e.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/27ada3201401399.6673da3a33d0e.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/27ada3201401399.6673da3a33d0e.png"
  if [ -s "$WEB_ROOT/images/behance/27ada3201401399.6673da3a33d0e.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/27ada3201401399.6673da3a33d0e.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/b233b9201401399.6673da3a347db.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/b233b9201401399.6673da3a347db.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/b233b9201401399.6673da3a347db.png"
  if [ -s "$WEB_ROOT/images/behance/b233b9201401399.6673da3a347db.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/b233b9201401399.6673da3a347db.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/6722f2201401399.6673da3a352ba.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/6722f2201401399.6673da3a352ba.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/6722f2201401399.6673da3a352ba.png"
  if [ -s "$WEB_ROOT/images/behance/6722f2201401399.6673da3a352ba.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/6722f2201401399.6673da3a352ba.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/0f85ff201401399.6673da3a3967b.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/0f85ff201401399.6673da3a3967b.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/0f85ff201401399.6673da3a3967b.png"
  if [ -s "$WEB_ROOT/images/behance/0f85ff201401399.6673da3a3967b.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/0f85ff201401399.6673da3a3967b.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/75224c201401399.6673da3a37c9a.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/75224c201401399.6673da3a37c9a.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/75224c201401399.6673da3a37c9a.png"
  if [ -s "$WEB_ROOT/images/behance/75224c201401399.6673da3a37c9a.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/75224c201401399.6673da3a37c9a.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/2c0c67201401399.6673da3a35abc.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/2c0c67201401399.6673da3a35abc.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/2c0c67201401399.6673da3a35abc.png"
  if [ -s "$WEB_ROOT/images/behance/2c0c67201401399.6673da3a35abc.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/2c0c67201401399.6673da3a35abc.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/a604e3201401399.6673da3a3747e.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/a604e3201401399.6673da3a3747e.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/a604e3201401399.6673da3a3747e.png"
  if [ -s "$WEB_ROOT/images/behance/a604e3201401399.6673da3a3747e.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/a604e3201401399.6673da3a3747e.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/bde492201401399.6673da3a364cf.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/bde492201401399.6673da3a364cf.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/bde492201401399.6673da3a364cf.png"
  if [ -s "$WEB_ROOT/images/behance/bde492201401399.6673da3a364cf.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/bde492201401399.6673da3a364cf.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/39681f201401399.6673da3a36c55.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/39681f201401399.6673da3a36c55.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/39681f201401399.6673da3a36c55.png"
  if [ -s "$WEB_ROOT/images/behance/39681f201401399.6673da3a36c55.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/39681f201401399.6673da3a36c55.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/f82dcc201401399.6673da3a3f9d7.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/f82dcc201401399.6673da3a3f9d7.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/f82dcc201401399.6673da3a3f9d7.png"
  if [ -s "$WEB_ROOT/images/behance/f82dcc201401399.6673da3a3f9d7.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/f82dcc201401399.6673da3a3f9d7.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/30fe1f201401399.6673da3a3a078.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/30fe1f201401399.6673da3a3a078.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/30fe1f201401399.6673da3a3a078.png"
  if [ -s "$WEB_ROOT/images/behance/30fe1f201401399.6673da3a3a078.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/30fe1f201401399.6673da3a3a078.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/240a9d201401399.6673da3a3ab48.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/240a9d201401399.6673da3a3ab48.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/240a9d201401399.6673da3a3ab48.png"
  if [ -s "$WEB_ROOT/images/behance/240a9d201401399.6673da3a3ab48.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/240a9d201401399.6673da3a3ab48.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/b5898f201401399.6673da3a401be.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/b5898f201401399.6673da3a401be.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/b5898f201401399.6673da3a401be.png"
  if [ -s "$WEB_ROOT/images/behance/b5898f201401399.6673da3a401be.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/b5898f201401399.6673da3a401be.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/623033201401399.6673da3a3b645.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/623033201401399.6673da3a3b645.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/623033201401399.6673da3a3b645.png"
  if [ -s "$WEB_ROOT/images/behance/623033201401399.6673da3a3b645.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/623033201401399.6673da3a3b645.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/a09141201401399.6673da3a409ec.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/a09141201401399.6673da3a409ec.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/a09141201401399.6673da3a409ec.png"
  if [ -s "$WEB_ROOT/images/behance/a09141201401399.6673da3a409ec.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/a09141201401399.6673da3a409ec.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/93dafa201401399.6673da3a3c153.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/93dafa201401399.6673da3a3c153.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/93dafa201401399.6673da3a3c153.png"
  if [ -s "$WEB_ROOT/images/behance/93dafa201401399.6673da3a3c153.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/93dafa201401399.6673da3a3c153.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/90a547201401399.6673da3a3c94a.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/90a547201401399.6673da3a3c94a.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/90a547201401399.6673da3a3c94a.png"
  if [ -s "$WEB_ROOT/images/behance/90a547201401399.6673da3a3c94a.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/90a547201401399.6673da3a3c94a.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/7f2347201401399.6673da3a3dba7.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/7f2347201401399.6673da3a3dba7.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/7f2347201401399.6673da3a3dba7.png"
  if [ -s "$WEB_ROOT/images/behance/7f2347201401399.6673da3a3dba7.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/7f2347201401399.6673da3a3dba7.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/da4213201401399.6673da3a3d331.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/da4213201401399.6673da3a3d331.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/da4213201401399.6673da3a3d331.png"
  if [ -s "$WEB_ROOT/images/behance/da4213201401399.6673da3a3d331.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/da4213201401399.6673da3a3d331.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/29b39a201401399.6673da3a3e793.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/29b39a201401399.6673da3a3e793.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/29b39a201401399.6673da3a3e793.png"
  if [ -s "$WEB_ROOT/images/behance/29b39a201401399.6673da3a3e793.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/29b39a201401399.6673da3a3e793.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/e35ff0201401399.6673da3a41268.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/e35ff0201401399.6673da3a41268.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/e35ff0201401399.6673da3a41268.png"
  if [ -s "$WEB_ROOT/images/behance/e35ff0201401399.6673da3a41268.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/e35ff0201401399.6673da3a41268.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/97b542201401399.6673da3a4753c.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/97b542201401399.6673da3a4753c.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/97b542201401399.6673da3a4753c.png"
  if [ -s "$WEB_ROOT/images/behance/97b542201401399.6673da3a4753c.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/97b542201401399.6673da3a4753c.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/22520e201401399.6673da3a41ad1.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/22520e201401399.6673da3a41ad1.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/22520e201401399.6673da3a41ad1.png"
  if [ -s "$WEB_ROOT/images/behance/22520e201401399.6673da3a41ad1.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/22520e201401399.6673da3a41ad1.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/75828b201401399.6673da3a44a1b.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/75828b201401399.6673da3a44a1b.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/75828b201401399.6673da3a44a1b.png"
  if [ -s "$WEB_ROOT/images/behance/75828b201401399.6673da3a44a1b.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/75828b201401399.6673da3a44a1b.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/d4d93e201401399.6673da3a46bbc.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/d4d93e201401399.6673da3a46bbc.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/d4d93e201401399.6673da3a46bbc.png"
  if [ -s "$WEB_ROOT/images/behance/d4d93e201401399.6673da3a46bbc.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/d4d93e201401399.6673da3a46bbc.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/7986b8201401399.6673da3a42314.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/7986b8201401399.6673da3a42314.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/7986b8201401399.6673da3a42314.png"
  if [ -s "$WEB_ROOT/images/behance/7986b8201401399.6673da3a42314.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/7986b8201401399.6673da3a42314.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/d3d149201401399.6673da3a42cdd.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/d3d149201401399.6673da3a42cdd.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/d3d149201401399.6673da3a42cdd.png"
  if [ -s "$WEB_ROOT/images/behance/d3d149201401399.6673da3a42cdd.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/d3d149201401399.6673da3a42cdd.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/e1ef0f201401399.6673da3a3f1c8.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/e1ef0f201401399.6673da3a3f1c8.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/e1ef0f201401399.6673da3a3f1c8.png"
  if [ -s "$WEB_ROOT/images/behance/e1ef0f201401399.6673da3a3f1c8.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/e1ef0f201401399.6673da3a3f1c8.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/fb35db201401399.6673da3a45520.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/fb35db201401399.6673da3a45520.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/fb35db201401399.6673da3a45520.png"
  if [ -s "$WEB_ROOT/images/behance/fb35db201401399.6673da3a45520.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/fb35db201401399.6673da3a45520.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/467797201401399.6673da3a436e2.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/467797201401399.6673da3a436e2.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/467797201401399.6673da3a436e2.png"
  if [ -s "$WEB_ROOT/images/behance/467797201401399.6673da3a436e2.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/467797201401399.6673da3a436e2.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/4e9b54201401399.6673da3a4800f.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/4e9b54201401399.6673da3a4800f.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/4e9b54201401399.6673da3a4800f.png"
  if [ -s "$WEB_ROOT/images/behance/4e9b54201401399.6673da3a4800f.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/4e9b54201401399.6673da3a4800f.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/b7d782201401399.6673da3a440ab.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/b7d782201401399.6673da3a440ab.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/b7d782201401399.6673da3a440ab.png"
  if [ -s "$WEB_ROOT/images/behance/b7d782201401399.6673da3a440ab.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/b7d782201401399.6673da3a440ab.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/9356fa201401399.6673da3a48818.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/9356fa201401399.6673da3a48818.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/9356fa201401399.6673da3a48818.png"
  if [ -s "$WEB_ROOT/images/behance/9356fa201401399.6673da3a48818.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/9356fa201401399.6673da3a48818.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/0f991d201401399.6673da3a48ff6.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/0f991d201401399.6673da3a48ff6.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/0f991d201401399.6673da3a48ff6.png"
  if [ -s "$WEB_ROOT/images/behance/0f991d201401399.6673da3a48ff6.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/0f991d201401399.6673da3a48ff6.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/783999201401399.6673da3a49a2f.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/783999201401399.6673da3a49a2f.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/783999201401399.6673da3a49a2f.png"
  if [ -s "$WEB_ROOT/images/behance/783999201401399.6673da3a49a2f.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/783999201401399.6673da3a49a2f.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/126e65201401399.6673da3a460eb.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/126e65201401399.6673da3a460eb.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/126e65201401399.6673da3a460eb.png"
  if [ -s "$WEB_ROOT/images/behance/126e65201401399.6673da3a460eb.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/126e65201401399.6673da3a460eb.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/53b525201401399.6673da3a4a497.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/53b525201401399.6673da3a4a497.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/53b525201401399.6673da3a4a497.png"
  if [ -s "$WEB_ROOT/images/behance/53b525201401399.6673da3a4a497.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/53b525201401399.6673da3a4a497.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/e4b21d201401399.6673da3a4afb9.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/e4b21d201401399.6673da3a4afb9.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/e4b21d201401399.6673da3a4afb9.png"
  if [ -s "$WEB_ROOT/images/behance/e4b21d201401399.6673da3a4afb9.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/e4b21d201401399.6673da3a4afb9.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/c405ba201401399.6673da3a4ca30.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/c405ba201401399.6673da3a4ca30.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/c405ba201401399.6673da3a4ca30.png"
  if [ -s "$WEB_ROOT/images/behance/c405ba201401399.6673da3a4ca30.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/c405ba201401399.6673da3a4ca30.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/733338201401399.6673da3a4b7bc.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/733338201401399.6673da3a4b7bc.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/733338201401399.6673da3a4b7bc.png"
  if [ -s "$WEB_ROOT/images/behance/733338201401399.6673da3a4b7bc.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/733338201401399.6673da3a4b7bc.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/1b2e4a201401399.6673da3a4c213.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/1b2e4a201401399.6673da3a4c213.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/1b2e4a201401399.6673da3a4c213.png"
  if [ -s "$WEB_ROOT/images/behance/1b2e4a201401399.6673da3a4c213.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/1b2e4a201401399.6673da3a4c213.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/53ab7c201401399.6673da3a4d282.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/53ab7c201401399.6673da3a4d282.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/53ab7c201401399.6673da3a4d282.png"
  if [ -s "$WEB_ROOT/images/behance/53ab7c201401399.6673da3a4d282.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/53ab7c201401399.6673da3a4d282.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/2794d7201401399.6673da3a4db65.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/2794d7201401399.6673da3a4db65.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/2794d7201401399.6673da3a4db65.png"
  if [ -s "$WEB_ROOT/images/behance/2794d7201401399.6673da3a4db65.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/2794d7201401399.6673da3a4db65.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/f535ba201401399.6673da3a4e640.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/f535ba201401399.6673da3a4e640.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/f535ba201401399.6673da3a4e640.png"
  if [ -s "$WEB_ROOT/images/behance/f535ba201401399.6673da3a4e640.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/f535ba201401399.6673da3a4e640.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/a8d8d3201401399.6673da3a4f247.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/a8d8d3201401399.6673da3a4f247.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/a8d8d3201401399.6673da3a4f247.png"
  if [ -s "$WEB_ROOT/images/behance/a8d8d3201401399.6673da3a4f247.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/a8d8d3201401399.6673da3a4f247.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/ab844b201401399.6673da3a4fc1e.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/ab844b201401399.6673da3a4fc1e.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/ab844b201401399.6673da3a4fc1e.png"
  if [ -s "$WEB_ROOT/images/behance/ab844b201401399.6673da3a4fc1e.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/ab844b201401399.6673da3a4fc1e.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/70648b201401399.6673da3a5066a.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/70648b201401399.6673da3a5066a.png" "https://mir-s3-cdn-cf.behance.net/project_modules/source/70648b201401399.6673da3a5066a.png"
  if [ -s "$WEB_ROOT/images/behance/70648b201401399.6673da3a5066a.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/70648b201401399.6673da3a5066a.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/f65486148745651.62daab0cf0310.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/f65486148745651.62daab0cf0310.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs_webp/f65486148745651.62daab0cf0310.jpg"
  if [ -s "$WEB_ROOT/images/behance/f65486148745651.62daab0cf0310.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/f65486148745651.62daab0cf0310.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/6a459d148745651.62daab0d02960.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/6a459d148745651.62daab0d02960.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs_webp/6a459d148745651.62daab0d02960.jpg"
  if [ -s "$WEB_ROOT/images/behance/6a459d148745651.62daab0d02960.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/6a459d148745651.62daab0d02960.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/53ff48148745651.62daab0d00da5.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/53ff48148745651.62daab0d00da5.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs_webp/53ff48148745651.62daab0d00da5.jpg"
  if [ -s "$WEB_ROOT/images/behance/53ff48148745651.62daab0d00da5.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/53ff48148745651.62daab0d00da5.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/74bc98148745651.62daab0d005da.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/74bc98148745651.62daab0d005da.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs_webp/74bc98148745651.62daab0d005da.jpg"
  if [ -s "$WEB_ROOT/images/behance/74bc98148745651.62daab0d005da.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/74bc98148745651.62daab0d005da.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/312cbd148745651.62daab0d033ba.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/312cbd148745651.62daab0d033ba.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs_webp/312cbd148745651.62daab0d033ba.jpg"
  if [ -s "$WEB_ROOT/images/behance/312cbd148745651.62daab0d033ba.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/312cbd148745651.62daab0d033ba.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/8aec82148745651.62daab0cf1f06.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/8aec82148745651.62daab0cf1f06.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs_webp/8aec82148745651.62daab0cf1f06.jpg"
  if [ -s "$WEB_ROOT/images/behance/8aec82148745651.62daab0cf1f06.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/8aec82148745651.62daab0cf1f06.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/a9e09b148745651.62daab0cf26e7.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/a9e09b148745651.62daab0cf26e7.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs_webp/a9e09b148745651.62daab0cf26e7.jpg"
  if [ -s "$WEB_ROOT/images/behance/a9e09b148745651.62daab0cf26e7.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/a9e09b148745651.62daab0cf26e7.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/1e45b7148745651.62daab0cf0d22.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/1e45b7148745651.62daab0cf0d22.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs_webp/1e45b7148745651.62daab0cf0d22.jpg"
  if [ -s "$WEB_ROOT/images/behance/1e45b7148745651.62daab0cf0d22.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/1e45b7148745651.62daab0cf0d22.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/5d1646148745651.62daab0cefd31.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/5d1646148745651.62daab0cefd31.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs_webp/5d1646148745651.62daab0cefd31.jpg"
  if [ -s "$WEB_ROOT/images/behance/5d1646148745651.62daab0cefd31.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/5d1646148745651.62daab0cefd31.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/556e54148745651.62daab0cf3cbb.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/556e54148745651.62daab0cf3cbb.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs_webp/556e54148745651.62daab0cf3cbb.jpg"
  if [ -s "$WEB_ROOT/images/behance/556e54148745651.62daab0cf3cbb.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/556e54148745651.62daab0cf3cbb.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/5ba723148745651.62daab0d01eef.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/5ba723148745651.62daab0d01eef.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs_webp/5ba723148745651.62daab0d01eef.jpg"
  if [ -s "$WEB_ROOT/images/behance/5ba723148745651.62daab0d01eef.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/5ba723148745651.62daab0d01eef.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/77d780148745651.62daab0cf3582.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/77d780148745651.62daab0cf3582.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs_webp/77d780148745651.62daab0cf3582.jpg"
  if [ -s "$WEB_ROOT/images/behance/77d780148745651.62daab0cf3582.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/77d780148745651.62daab0cf3582.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/78ac38148745651.62daab0cf41d5.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/78ac38148745651.62daab0cf41d5.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs_webp/78ac38148745651.62daab0cf41d5.jpg"
  if [ -s "$WEB_ROOT/images/behance/78ac38148745651.62daab0cf41d5.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/78ac38148745651.62daab0cf41d5.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/7c636f148745651.62daab0cf2e4e.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/7c636f148745651.62daab0cf2e4e.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs_webp/7c636f148745651.62daab0cf2e4e.jpg"
  if [ -s "$WEB_ROOT/images/behance/7c636f148745651.62daab0cf2e4e.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/7c636f148745651.62daab0cf2e4e.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/663158148745651.62daab0cf1525.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/663158148745651.62daab0cf1525.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs_webp/663158148745651.62daab0cf1525.jpg"
  if [ -s "$WEB_ROOT/images/behance/663158148745651.62daab0cf1525.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/663158148745651.62daab0cf1525.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/91bc39148745651.62daab0d0164e.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/91bc39148745651.62daab0d0164e.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs_webp/91bc39148745651.62daab0d0164e.jpg"
  if [ -s "$WEB_ROOT/images/behance/91bc39148745651.62daab0d0164e.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/91bc39148745651.62daab0d0164e.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/85b72f148745651.62daab0cf1a3d.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/85b72f148745651.62daab0cf1a3d.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs_webp/85b72f148745651.62daab0cf1a3d.jpg"
  if [ -s "$WEB_ROOT/images/behance/85b72f148745651.62daab0cf1a3d.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/85b72f148745651.62daab0cf1a3d.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/850b4c120268903.60ae569c8cb75.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/850b4c120268903.60ae569c8cb75.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/1400/850b4c120268903.60ae569c8cb75.jpg"
  if [ -s "$WEB_ROOT/images/behance/850b4c120268903.60ae569c8cb75.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/850b4c120268903.60ae569c8cb75.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/3e63e4120268903.60ae569c90341.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/3e63e4120268903.60ae569c90341.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/1400/3e63e4120268903.60ae569c90341.jpg"
  if [ -s "$WEB_ROOT/images/behance/3e63e4120268903.60ae569c90341.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/3e63e4120268903.60ae569c90341.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/18dabb120268903.60ae569c934dd.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/18dabb120268903.60ae569c934dd.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/1400/18dabb120268903.60ae569c934dd.jpg"
  if [ -s "$WEB_ROOT/images/behance/18dabb120268903.60ae569c934dd.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/18dabb120268903.60ae569c934dd.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/9eebeb120268903.60ae569c91a1e.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/9eebeb120268903.60ae569c91a1e.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/1400/9eebeb120268903.60ae569c91a1e.jpg"
  if [ -s "$WEB_ROOT/images/behance/9eebeb120268903.60ae569c91a1e.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/9eebeb120268903.60ae569c91a1e.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/269d2e120268903.60ae569c94d01.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/269d2e120268903.60ae569c94d01.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/1400/269d2e120268903.60ae569c94d01.jpg"
  if [ -s "$WEB_ROOT/images/behance/269d2e120268903.60ae569c94d01.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/269d2e120268903.60ae569c94d01.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/3d1f93120268903.60ae569c8efce.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/3d1f93120268903.60ae569c8efce.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/1400/3d1f93120268903.60ae569c8efce.jpg"
  if [ -s "$WEB_ROOT/images/behance/3d1f93120268903.60ae569c8efce.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/3d1f93120268903.60ae569c8efce.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/54c75d120268903.60ae569c9abca.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/54c75d120268903.60ae569c9abca.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/1400/54c75d120268903.60ae569c9abca.jpg"
  if [ -s "$WEB_ROOT/images/behance/54c75d120268903.60ae569c9abca.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/54c75d120268903.60ae569c9abca.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/5a40b0120268903.60ae569c9606d.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/5a40b0120268903.60ae569c9606d.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/1400/5a40b0120268903.60ae569c9606d.jpg"
  if [ -s "$WEB_ROOT/images/behance/5a40b0120268903.60ae569c9606d.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/5a40b0120268903.60ae569c9606d.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/daa3f4120268903.60ae569c92ec1.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/daa3f4120268903.60ae569c92ec1.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/1400/daa3f4120268903.60ae569c92ec1.jpg"
  if [ -s "$WEB_ROOT/images/behance/daa3f4120268903.60ae569c92ec1.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/daa3f4120268903.60ae569c92ec1.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/0410e8120268903.60ae569c90ac0.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/0410e8120268903.60ae569c90ac0.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/1400/0410e8120268903.60ae569c90ac0.jpg"
  if [ -s "$WEB_ROOT/images/behance/0410e8120268903.60ae569c90ac0.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/0410e8120268903.60ae569c90ac0.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/8af270120268903.60ae569c8d9b5.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/8af270120268903.60ae569c8d9b5.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/1400/8af270120268903.60ae569c8d9b5.jpg"
  if [ -s "$WEB_ROOT/images/behance/8af270120268903.60ae569c8d9b5.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/8af270120268903.60ae569c8d9b5.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/9b04bd120268903.60ae6e27361f9.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/9b04bd120268903.60ae6e27361f9.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/1400/9b04bd120268903.60ae6e27361f9.jpg"
  if [ -s "$WEB_ROOT/images/behance/9b04bd120268903.60ae6e27361f9.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/9b04bd120268903.60ae6e27361f9.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/298d14120268903.60ae569c8f581.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/298d14120268903.60ae569c8f581.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/1400/298d14120268903.60ae569c8f581.jpg"
  if [ -s "$WEB_ROOT/images/behance/298d14120268903.60ae569c8f581.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/298d14120268903.60ae569c8f581.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/eea9c9120268903.60ae569c98b0f.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/eea9c9120268903.60ae569c98b0f.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/1400/eea9c9120268903.60ae569c98b0f.jpg"
  if [ -s "$WEB_ROOT/images/behance/eea9c9120268903.60ae569c98b0f.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/eea9c9120268903.60ae569c98b0f.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/0f440d120268903.60ae569c928cb.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/0f440d120268903.60ae569c928cb.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/1400/0f440d120268903.60ae569c928cb.jpg"
  if [ -s "$WEB_ROOT/images/behance/0f440d120268903.60ae569c928cb.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/0f440d120268903.60ae569c928cb.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/259e2d120268903.60ae569c956ec.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/259e2d120268903.60ae569c956ec.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/1400/259e2d120268903.60ae569c956ec.jpg"
  if [ -s "$WEB_ROOT/images/behance/259e2d120268903.60ae569c956ec.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/259e2d120268903.60ae569c956ec.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/30e671120268903.60ae569c93c3f.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/30e671120268903.60ae569c93c3f.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/1400/30e671120268903.60ae569c93c3f.jpg"
  if [ -s "$WEB_ROOT/images/behance/30e671120268903.60ae569c93c3f.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/30e671120268903.60ae569c93c3f.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/16bf9d120268903.60ae569c8e9a1.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/16bf9d120268903.60ae569c8e9a1.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/1400/16bf9d120268903.60ae569c8e9a1.jpg"
  if [ -s "$WEB_ROOT/images/behance/16bf9d120268903.60ae569c8e9a1.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/16bf9d120268903.60ae569c8e9a1.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/ca7a24120268903.60ae569c8fbdc.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/ca7a24120268903.60ae569c8fbdc.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/1400/ca7a24120268903.60ae569c8fbdc.jpg"
  if [ -s "$WEB_ROOT/images/behance/ca7a24120268903.60ae569c8fbdc.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/ca7a24120268903.60ae569c8fbdc.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/0cd778120268903.60ae569c92168.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/0cd778120268903.60ae569c92168.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/1400/0cd778120268903.60ae569c92168.jpg"
  if [ -s "$WEB_ROOT/images/behance/0cd778120268903.60ae569c92168.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/0cd778120268903.60ae569c92168.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/f502dd120268903.60ae569c8e158.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/f502dd120268903.60ae569c8e158.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/1400/f502dd120268903.60ae569c8e158.jpg"
  if [ -s "$WEB_ROOT/images/behance/f502dd120268903.60ae569c8e158.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/f502dd120268903.60ae569c8e158.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/fc7b68120268903.60ae569c99eea.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/fc7b68120268903.60ae569c99eea.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/1400/fc7b68120268903.60ae569c99eea.jpg"
  if [ -s "$WEB_ROOT/images/behance/fc7b68120268903.60ae569c99eea.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/fc7b68120268903.60ae569c99eea.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/5eb543120268903.60ae569c9434f.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/5eb543120268903.60ae569c9434f.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/1400/5eb543120268903.60ae569c9434f.jpg"
  if [ -s "$WEB_ROOT/images/behance/5eb543120268903.60ae569c9434f.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/5eb543120268903.60ae569c9434f.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/0f830e120268903.60ae569c9b363.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/0f830e120268903.60ae569c9b363.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/1400/0f830e120268903.60ae569c9b363.jpg"
  if [ -s "$WEB_ROOT/images/behance/0f830e120268903.60ae569c9b363.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/0f830e120268903.60ae569c9b363.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/6f2efb120268903.60ae569c91290.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/6f2efb120268903.60ae569c91290.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/1400/6f2efb120268903.60ae569c91290.jpg"
  if [ -s "$WEB_ROOT/images/behance/6f2efb120268903.60ae569c91290.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/6f2efb120268903.60ae569c91290.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/ca37e7120268903.60ae569c982b7.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/ca37e7120268903.60ae569c982b7.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/1400/ca37e7120268903.60ae569c982b7.jpg"
  if [ -s "$WEB_ROOT/images/behance/ca37e7120268903.60ae569c982b7.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/ca37e7120268903.60ae569c982b7.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/bfd939120268903.60ae569c96864.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/bfd939120268903.60ae569c96864.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/1400/bfd939120268903.60ae569c96864.jpg"
  if [ -s "$WEB_ROOT/images/behance/bfd939120268903.60ae569c96864.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/bfd939120268903.60ae569c96864.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/ebbd51120268903.60ae569c970c7.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/ebbd51120268903.60ae569c970c7.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/1400/ebbd51120268903.60ae569c970c7.jpg"
  if [ -s "$WEB_ROOT/images/behance/ebbd51120268903.60ae569c970c7.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/ebbd51120268903.60ae569c970c7.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/af9893120268903.60ae569c996ec.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/af9893120268903.60ae569c996ec.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/1400/af9893120268903.60ae569c996ec.jpg"
  if [ -s "$WEB_ROOT/images/behance/af9893120268903.60ae569c996ec.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/af9893120268903.60ae569c996ec.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/6be010120268903.60ae569c9bc1c.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/6be010120268903.60ae569c9bc1c.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/1400/6be010120268903.60ae569c9bc1c.jpg"
  if [ -s "$WEB_ROOT/images/behance/6be010120268903.60ae569c9bc1c.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/6be010120268903.60ae569c9bc1c.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/be55c3120268903.60ae569c9a5bf.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/be55c3120268903.60ae569c9a5bf.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/1400/be55c3120268903.60ae569c9a5bf.jpg"
  if [ -s "$WEB_ROOT/images/behance/be55c3120268903.60ae569c9a5bf.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/be55c3120268903.60ae569c9a5bf.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/613ffe120268903.60ae569c97a89.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/613ffe120268903.60ae569c97a89.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/1400/613ffe120268903.60ae569c97a89.jpg"
  if [ -s "$WEB_ROOT/images/behance/613ffe120268903.60ae569c97a89.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/613ffe120268903.60ae569c97a89.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/3021cb120268903.60ae569c99172.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/3021cb120268903.60ae569c99172.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/1400/3021cb120268903.60ae569c99172.jpg"
  if [ -s "$WEB_ROOT/images/behance/3021cb120268903.60ae569c99172.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/3021cb120268903.60ae569c99172.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/08464c114930779.6044f177d61aa.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/08464c114930779.6044f177d61aa.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/08464c114930779.6044f177d61aa.jpg"
  if [ -s "$WEB_ROOT/images/behance/08464c114930779.6044f177d61aa.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/08464c114930779.6044f177d61aa.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/0a4e4c114930779.6044f177d7ac3.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/0a4e4c114930779.6044f177d7ac3.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/0a4e4c114930779.6044f177d7ac3.jpg"
  if [ -s "$WEB_ROOT/images/behance/0a4e4c114930779.6044f177d7ac3.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/0a4e4c114930779.6044f177d7ac3.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/0d6733114930779.6044f177d88d2.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/0d6733114930779.6044f177d88d2.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/0d6733114930779.6044f177d88d2.jpg"
  if [ -s "$WEB_ROOT/images/behance/0d6733114930779.6044f177d88d2.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/0d6733114930779.6044f177d88d2.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/113cc4114930779.6044f177de523.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/113cc4114930779.6044f177de523.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/113cc4114930779.6044f177de523.jpg"
  if [ -s "$WEB_ROOT/images/behance/113cc4114930779.6044f177de523.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/113cc4114930779.6044f177de523.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/115d1b114930779.6044f177cace6.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/115d1b114930779.6044f177cace6.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/115d1b114930779.6044f177cace6.jpg"
  if [ -s "$WEB_ROOT/images/behance/115d1b114930779.6044f177cace6.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/115d1b114930779.6044f177cace6.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/14145c114930779.6044f177d755e.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/14145c114930779.6044f177d755e.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/14145c114930779.6044f177d755e.jpg"
  if [ -s "$WEB_ROOT/images/behance/14145c114930779.6044f177d755e.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/14145c114930779.6044f177d755e.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/19f806114930779.6044f177dbe61.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/19f806114930779.6044f177dbe61.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/19f806114930779.6044f177dbe61.jpg"
  if [ -s "$WEB_ROOT/images/behance/19f806114930779.6044f177dbe61.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/19f806114930779.6044f177dbe61.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/1da82b114930779.6044f177d8242.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/1da82b114930779.6044f177d8242.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/1da82b114930779.6044f177d8242.jpg"
  if [ -s "$WEB_ROOT/images/behance/1da82b114930779.6044f177d8242.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/1da82b114930779.6044f177d8242.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/1e0c02114930779.6044f177e46a5.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/1e0c02114930779.6044f177e46a5.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/1e0c02114930779.6044f177e46a5.jpg"
  if [ -s "$WEB_ROOT/images/behance/1e0c02114930779.6044f177e46a5.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/1e0c02114930779.6044f177e46a5.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/1fa235114930779.6044f177d9fba.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/1fa235114930779.6044f177d9fba.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/1fa235114930779.6044f177d9fba.jpg"
  if [ -s "$WEB_ROOT/images/behance/1fa235114930779.6044f177d9fba.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/1fa235114930779.6044f177d9fba.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/1fb15f114930779.6044f177cb61e.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/1fb15f114930779.6044f177cb61e.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/1fb15f114930779.6044f177cb61e.jpg"
  if [ -s "$WEB_ROOT/images/behance/1fb15f114930779.6044f177cb61e.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/1fb15f114930779.6044f177cb61e.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/2a6f56114930779.6044f177d6e1e.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/2a6f56114930779.6044f177d6e1e.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/2a6f56114930779.6044f177d6e1e.jpg"
  if [ -s "$WEB_ROOT/images/behance/2a6f56114930779.6044f177d6e1e.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/2a6f56114930779.6044f177d6e1e.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/2b2b25114930779.6044f177d2ce8.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/2b2b25114930779.6044f177d2ce8.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/2b2b25114930779.6044f177d2ce8.jpg"
  if [ -s "$WEB_ROOT/images/behance/2b2b25114930779.6044f177d2ce8.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/2b2b25114930779.6044f177d2ce8.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/2c5a9c114930779.6044f177d5997.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/2c5a9c114930779.6044f177d5997.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/2c5a9c114930779.6044f177d5997.jpg"
  if [ -s "$WEB_ROOT/images/behance/2c5a9c114930779.6044f177d5997.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/2c5a9c114930779.6044f177d5997.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/2e5a88114930779.6044f177cf918.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/2e5a88114930779.6044f177cf918.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/2e5a88114930779.6044f177cf918.jpg"
  if [ -s "$WEB_ROOT/images/behance/2e5a88114930779.6044f177cf918.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/2e5a88114930779.6044f177cf918.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/33524e114930779.6044f177dc622.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/33524e114930779.6044f177dc622.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/33524e114930779.6044f177dc622.jpg"
  if [ -s "$WEB_ROOT/images/behance/33524e114930779.6044f177dc622.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/33524e114930779.6044f177dc622.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/361275114930779.60465bcfc889f.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/361275114930779.60465bcfc889f.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/361275114930779.60465bcfc889f.jpg"
  if [ -s "$WEB_ROOT/images/behance/361275114930779.60465bcfc889f.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/361275114930779.60465bcfc889f.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/39b804114930779.6044f177d16fa.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/39b804114930779.6044f177d16fa.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/39b804114930779.6044f177d16fa.jpg"
  if [ -s "$WEB_ROOT/images/behance/39b804114930779.6044f177d16fa.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/39b804114930779.6044f177d16fa.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/3f61e2114930779.6044f177dfdd0.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/3f61e2114930779.6044f177dfdd0.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/3f61e2114930779.6044f177dfdd0.jpg"
  if [ -s "$WEB_ROOT/images/behance/3f61e2114930779.6044f177dfdd0.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/3f61e2114930779.6044f177dfdd0.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/49fe1c114930779.6044f177e0657.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/49fe1c114930779.6044f177e0657.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/49fe1c114930779.6044f177e0657.jpg"
  if [ -s "$WEB_ROOT/images/behance/49fe1c114930779.6044f177e0657.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/49fe1c114930779.6044f177e0657.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/4c3786114930779.6044f177cdddf.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/4c3786114930779.6044f177cdddf.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/4c3786114930779.6044f177cdddf.jpg"
  if [ -s "$WEB_ROOT/images/behance/4c3786114930779.6044f177cdddf.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/4c3786114930779.6044f177cdddf.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/4d31db114930779.6044f177daf4e.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/4d31db114930779.6044f177daf4e.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/4d31db114930779.6044f177daf4e.jpg"
  if [ -s "$WEB_ROOT/images/behance/4d31db114930779.6044f177daf4e.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/4d31db114930779.6044f177daf4e.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/502ffa114930779.6044f177e301b.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/502ffa114930779.6044f177e301b.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/502ffa114930779.6044f177e301b.jpg"
  if [ -s "$WEB_ROOT/images/behance/502ffa114930779.6044f177e301b.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/502ffa114930779.6044f177e301b.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/518e96114930779.6044f177cef8d.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/518e96114930779.6044f177cef8d.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/518e96114930779.6044f177cef8d.jpg"
  if [ -s "$WEB_ROOT/images/behance/518e96114930779.6044f177cef8d.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/518e96114930779.6044f177cef8d.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/51cea4114930779.6044f177cfefd.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/51cea4114930779.6044f177cfefd.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/51cea4114930779.6044f177cfefd.jpg"
  if [ -s "$WEB_ROOT/images/behance/51cea4114930779.6044f177cfefd.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/51cea4114930779.6044f177cfefd.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/51e1e9114930779.6044f177e0f67.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/51e1e9114930779.6044f177e0f67.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/51e1e9114930779.6044f177e0f67.jpg"
  if [ -s "$WEB_ROOT/images/behance/51e1e9114930779.6044f177e0f67.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/51e1e9114930779.6044f177e0f67.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/53b4f7114930779.6044f177d1cc9.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/53b4f7114930779.6044f177d1cc9.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/53b4f7114930779.6044f177d1cc9.jpg"
  if [ -s "$WEB_ROOT/images/behance/53b4f7114930779.6044f177d1cc9.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/53b4f7114930779.6044f177d1cc9.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/55fe14114930779.6044f177dee29.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/55fe14114930779.6044f177dee29.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/55fe14114930779.6044f177dee29.jpg"
  if [ -s "$WEB_ROOT/images/behance/55fe14114930779.6044f177dee29.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/55fe14114930779.6044f177dee29.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/59487e114930779.6044f177c976e.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/59487e114930779.6044f177c976e.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/59487e114930779.6044f177c976e.jpg"
  if [ -s "$WEB_ROOT/images/behance/59487e114930779.6044f177c976e.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/59487e114930779.6044f177c976e.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/5a6b70114930779.6044f177df792.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/5a6b70114930779.6044f177df792.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/5a6b70114930779.6044f177df792.jpg"
  if [ -s "$WEB_ROOT/images/behance/5a6b70114930779.6044f177df792.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/5a6b70114930779.6044f177df792.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/5fd278114930779.6044f177d42fb.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/5fd278114930779.6044f177d42fb.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/5fd278114930779.6044f177d42fb.jpg"
  if [ -s "$WEB_ROOT/images/behance/5fd278114930779.6044f177d42fb.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/5fd278114930779.6044f177d42fb.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/616022114930779.6044f177e2120.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/616022114930779.6044f177e2120.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/616022114930779.6044f177e2120.jpg"
  if [ -s "$WEB_ROOT/images/behance/616022114930779.6044f177e2120.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/616022114930779.6044f177e2120.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/678cd0114930779.6044f177d2517.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/678cd0114930779.6044f177d2517.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/678cd0114930779.6044f177d2517.jpg"
  if [ -s "$WEB_ROOT/images/behance/678cd0114930779.6044f177d2517.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/678cd0114930779.6044f177d2517.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/7fef8b114930779.6044f177cd48f.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/7fef8b114930779.6044f177cd48f.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/7fef8b114930779.6044f177cd48f.jpg"
  if [ -s "$WEB_ROOT/images/behance/7fef8b114930779.6044f177cd48f.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/7fef8b114930779.6044f177cd48f.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/807bd3114930779.6044f177ce5ed.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/807bd3114930779.6044f177ce5ed.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/807bd3114930779.6044f177ce5ed.jpg"
  if [ -s "$WEB_ROOT/images/behance/807bd3114930779.6044f177ce5ed.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/807bd3114930779.6044f177ce5ed.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/80ed4e114930779.6044f177dcda9.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/80ed4e114930779.6044f177dcda9.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/80ed4e114930779.6044f177dcda9.jpg"
  if [ -s "$WEB_ROOT/images/behance/80ed4e114930779.6044f177dcda9.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/80ed4e114930779.6044f177dcda9.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/859167114930779.6044f177d4caf.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/859167114930779.6044f177d4caf.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/859167114930779.6044f177d4caf.jpg"
  if [ -s "$WEB_ROOT/images/behance/859167114930779.6044f177d4caf.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/859167114930779.6044f177d4caf.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/88d95c114930779.6044f177ddf58.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/88d95c114930779.6044f177ddf58.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/88d95c114930779.6044f177ddf58.jpg"
  if [ -s "$WEB_ROOT/images/behance/88d95c114930779.6044f177ddf58.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/88d95c114930779.6044f177ddf58.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/926be0114930779.60465bcfc806a.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/926be0114930779.60465bcfc806a.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/926be0114930779.60465bcfc806a.jpg"
  if [ -s "$WEB_ROOT/images/behance/926be0114930779.60465bcfc806a.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/926be0114930779.60465bcfc806a.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/937c93114930779.6044f177d0684.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/937c93114930779.6044f177d0684.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/937c93114930779.6044f177d0684.jpg"
  if [ -s "$WEB_ROOT/images/behance/937c93114930779.6044f177d0684.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/937c93114930779.6044f177d0684.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/9f4be5114930779.6044f177ccbe7.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/9f4be5114930779.6044f177ccbe7.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/9f4be5114930779.6044f177ccbe7.jpg"
  if [ -s "$WEB_ROOT/images/behance/9f4be5114930779.6044f177ccbe7.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/9f4be5114930779.6044f177ccbe7.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/a8ea46114930779.6044f177cc2cf.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/a8ea46114930779.6044f177cc2cf.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/a8ea46114930779.6044f177cc2cf.jpg"
  if [ -s "$WEB_ROOT/images/behance/a8ea46114930779.6044f177cc2cf.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/a8ea46114930779.6044f177cc2cf.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/ad7766114930779.6044f177db63b.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/ad7766114930779.6044f177db63b.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/ad7766114930779.6044f177db63b.jpg"
  if [ -s "$WEB_ROOT/images/behance/ad7766114930779.6044f177db63b.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/ad7766114930779.6044f177db63b.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/b29e71114930779.6044f177e40e6.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/b29e71114930779.6044f177e40e6.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/b29e71114930779.6044f177e40e6.jpg"
  if [ -s "$WEB_ROOT/images/behance/b29e71114930779.6044f177e40e6.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/b29e71114930779.6044f177e40e6.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/b4d732114930779.6044f177d332a.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/b4d732114930779.6044f177d332a.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/b4d732114930779.6044f177d332a.jpg"
  if [ -s "$WEB_ROOT/images/behance/b4d732114930779.6044f177d332a.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/b4d732114930779.6044f177d332a.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/bda4b3114930779.6044f177e606a.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/bda4b3114930779.6044f177e606a.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/bda4b3114930779.6044f177e606a.jpg"
  if [ -s "$WEB_ROOT/images/behance/bda4b3114930779.6044f177e606a.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/bda4b3114930779.6044f177e606a.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/be01f0114930779.6044f177e589a.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/be01f0114930779.6044f177e589a.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/be01f0114930779.6044f177e589a.jpg"
  if [ -s "$WEB_ROOT/images/behance/be01f0114930779.6044f177e589a.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/be01f0114930779.6044f177e589a.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/be5297114930779.6044f177e37c4.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/be5297114930779.6044f177e37c4.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/be5297114930779.6044f177e37c4.jpg"
  if [ -s "$WEB_ROOT/images/behance/be5297114930779.6044f177e37c4.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/be5297114930779.6044f177e37c4.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/c22fe4114930779.6044f177d675a.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/c22fe4114930779.6044f177d675a.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/c22fe4114930779.6044f177d675a.jpg"
  if [ -s "$WEB_ROOT/images/behance/c22fe4114930779.6044f177d675a.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/c22fe4114930779.6044f177d675a.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/c2ec54114930779.6044f177dd6d4.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/c2ec54114930779.6044f177dd6d4.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/c2ec54114930779.6044f177dd6d4.jpg"
  if [ -s "$WEB_ROOT/images/behance/c2ec54114930779.6044f177dd6d4.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/c2ec54114930779.6044f177dd6d4.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/c4d94c114930779.6044f177da741.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/c4d94c114930779.6044f177da741.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/c4d94c114930779.6044f177da741.jpg"
  if [ -s "$WEB_ROOT/images/behance/c4d94c114930779.6044f177da741.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/c4d94c114930779.6044f177da741.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/ca194f114930779.6044f177e29df.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/ca194f114930779.6044f177e29df.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/ca194f114930779.6044f177e29df.jpg"
  if [ -s "$WEB_ROOT/images/behance/ca194f114930779.6044f177e29df.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/ca194f114930779.6044f177e29df.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/cf005f114930779.6044f177ca20e.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/cf005f114930779.6044f177ca20e.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/cf005f114930779.6044f177ca20e.jpg"
  if [ -s "$WEB_ROOT/images/behance/cf005f114930779.6044f177ca20e.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/cf005f114930779.6044f177ca20e.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/d43fb5114930779.6044f177e677c.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/d43fb5114930779.6044f177e677c.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/d43fb5114930779.6044f177e677c.jpg"
  if [ -s "$WEB_ROOT/images/behance/d43fb5114930779.6044f177e677c.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/d43fb5114930779.6044f177e677c.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/f02e4a114930779.6044f177d0f04.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/f02e4a114930779.6044f177d0f04.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/f02e4a114930779.6044f177d0f04.jpg"
  if [ -s "$WEB_ROOT/images/behance/f02e4a114930779.6044f177d0f04.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/f02e4a114930779.6044f177d0f04.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/f413e5114930779.6044f177e173e.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/f413e5114930779.6044f177e173e.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/f413e5114930779.6044f177e173e.jpg"
  if [ -s "$WEB_ROOT/images/behance/f413e5114930779.6044f177e173e.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/f413e5114930779.6044f177e173e.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/f86219114930779.6044f177d5325.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/f86219114930779.6044f177d5325.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/f86219114930779.6044f177d5325.jpg"
  if [ -s "$WEB_ROOT/images/behance/f86219114930779.6044f177d5325.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/f86219114930779.6044f177d5325.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/fb9be9114930779.6044f177d3bfa.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/fb9be9114930779.6044f177d3bfa.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/fb9be9114930779.6044f177d3bfa.jpg"
  if [ -s "$WEB_ROOT/images/behance/fb9be9114930779.6044f177d3bfa.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/fb9be9114930779.6044f177d3bfa.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/fd035d114930779.6044f177e4fc0.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/fd035d114930779.6044f177e4fc0.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/fd035d114930779.6044f177e4fc0.jpg"
  if [ -s "$WEB_ROOT/images/behance/fd035d114930779.6044f177e4fc0.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/fd035d114930779.6044f177e4fc0.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/1a2f36111067249.5ffb3a3076236.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/1a2f36111067249.5ffb3a3076236.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/1a2f36111067249.5ffb3a3076236.jpg"
  if [ -s "$WEB_ROOT/images/behance/1a2f36111067249.5ffb3a3076236.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/1a2f36111067249.5ffb3a3076236.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/e6672c111067249.5ffc6aee6eab9.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/e6672c111067249.5ffc6aee6eab9.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/e6672c111067249.5ffc6aee6eab9.jpg"
  if [ -s "$WEB_ROOT/images/behance/e6672c111067249.5ffc6aee6eab9.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/e6672c111067249.5ffc6aee6eab9.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/13e922111067249.5ffb3a30747f0.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/13e922111067249.5ffb3a30747f0.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/13e922111067249.5ffb3a30747f0.jpg"
  if [ -s "$WEB_ROOT/images/behance/13e922111067249.5ffb3a30747f0.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/13e922111067249.5ffb3a30747f0.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/a1ab35111067249.5ffb3a307267e.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/a1ab35111067249.5ffb3a307267e.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/a1ab35111067249.5ffb3a307267e.jpg"
  if [ -s "$WEB_ROOT/images/behance/a1ab35111067249.5ffb3a307267e.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/a1ab35111067249.5ffb3a307267e.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/424713111067249.5ffb3a3073de4.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/424713111067249.5ffb3a3073de4.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/424713111067249.5ffb3a3073de4.jpg"
  if [ -s "$WEB_ROOT/images/behance/424713111067249.5ffb3a3073de4.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/424713111067249.5ffb3a3073de4.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/d8c43d111067249.5ffb3a30751be.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/d8c43d111067249.5ffb3a30751be.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/d8c43d111067249.5ffb3a30751be.jpg"
  if [ -s "$WEB_ROOT/images/behance/d8c43d111067249.5ffb3a30751be.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/d8c43d111067249.5ffb3a30751be.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/e24947111067249.5ffb3a306eb05.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/e24947111067249.5ffb3a306eb05.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/e24947111067249.5ffb3a306eb05.jpg"
  if [ -s "$WEB_ROOT/images/behance/e24947111067249.5ffb3a306eb05.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/e24947111067249.5ffb3a306eb05.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/a84d44111067249.5ffb3a30769f4.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/a84d44111067249.5ffb3a30769f4.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/a84d44111067249.5ffb3a30769f4.jpg"
  if [ -s "$WEB_ROOT/images/behance/a84d44111067249.5ffb3a30769f4.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/a84d44111067249.5ffb3a30769f4.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/582e1b111067249.5ffb3a3073669.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/582e1b111067249.5ffb3a3073669.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/582e1b111067249.5ffb3a3073669.jpg"
  if [ -s "$WEB_ROOT/images/behance/582e1b111067249.5ffb3a3073669.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/582e1b111067249.5ffb3a3073669.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/41ebcb111067249.5ffc6aee6f4be.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/41ebcb111067249.5ffc6aee6f4be.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/41ebcb111067249.5ffc6aee6f4be.jpg"
  if [ -s "$WEB_ROOT/images/behance/41ebcb111067249.5ffc6aee6f4be.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/41ebcb111067249.5ffc6aee6f4be.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/12e642111067249.5ffb3a3072ef7.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/12e642111067249.5ffb3a3072ef7.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/12e642111067249.5ffb3a3072ef7.jpg"
  if [ -s "$WEB_ROOT/images/behance/12e642111067249.5ffb3a3072ef7.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/12e642111067249.5ffb3a3072ef7.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/4cc14b111067249.5ffc6aee6ef81.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/4cc14b111067249.5ffc6aee6ef81.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/4cc14b111067249.5ffc6aee6ef81.jpg"
  if [ -s "$WEB_ROOT/images/behance/4cc14b111067249.5ffc6aee6ef81.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/4cc14b111067249.5ffc6aee6ef81.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/78a6f3102482521.5f378f29bbecf.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/78a6f3102482521.5f378f29bbecf.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/max_3840/78a6f3102482521.5f378f29bbecf.jpg"
  if [ -s "$WEB_ROOT/images/behance/78a6f3102482521.5f378f29bbecf.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/78a6f3102482521.5f378f29bbecf.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/842265102482521.5f378f29b3459.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/842265102482521.5f378f29b3459.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/max_3840/842265102482521.5f378f29b3459.jpg"
  if [ -s "$WEB_ROOT/images/behance/842265102482521.5f378f29b3459.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/842265102482521.5f378f29b3459.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/7b6cb2102482521.5f378f29b1947.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/7b6cb2102482521.5f378f29b1947.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/max_3840/7b6cb2102482521.5f378f29b1947.jpg"
  if [ -s "$WEB_ROOT/images/behance/7b6cb2102482521.5f378f29b1947.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/7b6cb2102482521.5f378f29b1947.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/7ba42c102482521.5f378f29b45f3.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/7ba42c102482521.5f378f29b45f3.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/max_3840/7ba42c102482521.5f378f29b45f3.jpg"
  if [ -s "$WEB_ROOT/images/behance/7ba42c102482521.5f378f29b45f3.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/7ba42c102482521.5f378f29b45f3.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/5febb6102482521.5f378f29bb43a.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/5febb6102482521.5f378f29bb43a.png" "https://mir-s3-cdn-cf.behance.net/project_modules/max_3840/5febb6102482521.5f378f29bb43a.png"
  if [ -s "$WEB_ROOT/images/behance/5febb6102482521.5f378f29bb43a.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/5febb6102482521.5f378f29bb43a.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/cc2505102482521.5f378f29b034b.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/cc2505102482521.5f378f29b034b.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/max_3840/cc2505102482521.5f378f29b034b.jpg"
  if [ -s "$WEB_ROOT/images/behance/cc2505102482521.5f378f29b034b.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/cc2505102482521.5f378f29b034b.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/605f9d102482521.5f378f29b5008.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/605f9d102482521.5f378f29b5008.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/max_3840/605f9d102482521.5f378f29b5008.jpg"
  if [ -s "$WEB_ROOT/images/behance/605f9d102482521.5f378f29b5008.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/605f9d102482521.5f378f29b5008.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/4ee542102482521.5f378f29b3ef5.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/4ee542102482521.5f378f29b3ef5.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/max_3840/4ee542102482521.5f378f29b3ef5.jpg"
  if [ -s "$WEB_ROOT/images/behance/4ee542102482521.5f378f29b3ef5.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/4ee542102482521.5f378f29b3ef5.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/fa5bf0102482521.5f378f29b087a.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/fa5bf0102482521.5f378f29b087a.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/max_3840/fa5bf0102482521.5f378f29b087a.jpg"
  if [ -s "$WEB_ROOT/images/behance/fa5bf0102482521.5f378f29b087a.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/fa5bf0102482521.5f378f29b087a.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/55a3ae102482521.5f378f29aebc9.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/55a3ae102482521.5f378f29aebc9.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/max_3840/55a3ae102482521.5f378f29aebc9.jpg"
  if [ -s "$WEB_ROOT/images/behance/55a3ae102482521.5f378f29aebc9.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/55a3ae102482521.5f378f29aebc9.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/0fef3c102482521.5f378f29afc8b.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/0fef3c102482521.5f378f29afc8b.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/max_3840/0fef3c102482521.5f378f29afc8b.jpg"
  if [ -s "$WEB_ROOT/images/behance/0fef3c102482521.5f378f29afc8b.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/0fef3c102482521.5f378f29afc8b.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/52ae9f102482521.5f378f29b1fbb.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/52ae9f102482521.5f378f29b1fbb.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/max_3840/52ae9f102482521.5f378f29b1fbb.jpg"
  if [ -s "$WEB_ROOT/images/behance/52ae9f102482521.5f378f29b1fbb.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/52ae9f102482521.5f378f29b1fbb.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/8231ee102482521.5f378f29b390c.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/8231ee102482521.5f378f29b390c.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/max_3840/8231ee102482521.5f378f29b390c.jpg"
  if [ -s "$WEB_ROOT/images/behance/8231ee102482521.5f378f29b390c.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/8231ee102482521.5f378f29b390c.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/64da71102482521.5f378f29af734.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/64da71102482521.5f378f29af734.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/max_3840/64da71102482521.5f378f29af734.jpg"
  if [ -s "$WEB_ROOT/images/behance/64da71102482521.5f378f29af734.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/64da71102482521.5f378f29af734.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/9f011c102482521.5f378f29af275.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/9f011c102482521.5f378f29af275.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/max_3840/9f011c102482521.5f378f29af275.jpg"
  if [ -s "$WEB_ROOT/images/behance/9f011c102482521.5f378f29af275.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/9f011c102482521.5f378f29af275.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/e4fb73102482521.5f378f29b4b4b.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/e4fb73102482521.5f378f29b4b4b.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/max_3840/e4fb73102482521.5f378f29b4b4b.jpg"
  if [ -s "$WEB_ROOT/images/behance/e4fb73102482521.5f378f29b4b4b.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/e4fb73102482521.5f378f29b4b4b.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/52cffb102482521.5f378f29adc48.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/52cffb102482521.5f378f29adc48.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/max_3840/52cffb102482521.5f378f29adc48.jpg"
  if [ -s "$WEB_ROOT/images/behance/52cffb102482521.5f378f29adc48.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/52cffb102482521.5f378f29adc48.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/d41f62102482521.5f378f29b0f1d.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/d41f62102482521.5f378f29b0f1d.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/max_3840/d41f62102482521.5f378f29b0f1d.jpg"
  if [ -s "$WEB_ROOT/images/behance/d41f62102482521.5f378f29b0f1d.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/d41f62102482521.5f378f29b0f1d.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/fc2d54102482521.5f378f29b29ca.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/fc2d54102482521.5f378f29b29ca.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/max_3840/fc2d54102482521.5f378f29b29ca.jpg"
  if [ -s "$WEB_ROOT/images/behance/fc2d54102482521.5f378f29b29ca.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/fc2d54102482521.5f378f29b29ca.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/df2be6102482521.5f378f29b2f2d.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/df2be6102482521.5f378f29b2f2d.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/max_3840/df2be6102482521.5f378f29b2f2d.jpg"
  if [ -s "$WEB_ROOT/images/behance/df2be6102482521.5f378f29b2f2d.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/df2be6102482521.5f378f29b2f2d.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/9ce04c102482521.5f378f29ae31b.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/9ce04c102482521.5f378f29ae31b.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/max_3840/9ce04c102482521.5f378f29ae31b.jpg"
  if [ -s "$WEB_ROOT/images/behance/9ce04c102482521.5f378f29ae31b.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/9ce04c102482521.5f378f29ae31b.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/d42b0d102482521.5f378f29b2465.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/d42b0d102482521.5f378f29b2465.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/max_3840/d42b0d102482521.5f378f29b2465.jpg"
  if [ -s "$WEB_ROOT/images/behance/d42b0d102482521.5f378f29b2465.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/d42b0d102482521.5f378f29b2465.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/6480e9102482521.5f378f29bb902.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/6480e9102482521.5f378f29bb902.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/max_3840/6480e9102482521.5f378f29bb902.jpg"
  if [ -s "$WEB_ROOT/images/behance/6480e9102482521.5f378f29bb902.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/6480e9102482521.5f378f29bb902.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/2ffae7102482521.5f378f29ba867.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/2ffae7102482521.5f378f29ba867.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/max_3840/2ffae7102482521.5f378f29ba867.jpg"
  if [ -s "$WEB_ROOT/images/behance/2ffae7102482521.5f378f29ba867.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/2ffae7102482521.5f378f29ba867.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/69d863102482521.5f378f29b1492.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/69d863102482521.5f378f29b1492.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/max_3840/69d863102482521.5f378f29b1492.jpg"
  if [ -s "$WEB_ROOT/images/behance/69d863102482521.5f378f29b1492.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/69d863102482521.5f378f29b1492.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/58baac102482521.5f378f29b757f.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/58baac102482521.5f378f29b757f.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/max_3840/58baac102482521.5f378f29b757f.jpg"
  if [ -s "$WEB_ROOT/images/behance/58baac102482521.5f378f29b757f.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/58baac102482521.5f378f29b757f.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/ede084102482521.5f378f29b59a8.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/ede084102482521.5f378f29b59a8.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/max_3840/ede084102482521.5f378f29b59a8.jpg"
  if [ -s "$WEB_ROOT/images/behance/ede084102482521.5f378f29b59a8.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/ede084102482521.5f378f29b59a8.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/d940d8102482521.5f378f29b97a8.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/d940d8102482521.5f378f29b97a8.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/max_3840/d940d8102482521.5f378f29b97a8.jpg"
  if [ -s "$WEB_ROOT/images/behance/d940d8102482521.5f378f29b97a8.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/d940d8102482521.5f378f29b97a8.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/b63ecf102482521.5f378f29b54ad.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/b63ecf102482521.5f378f29b54ad.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/max_3840/b63ecf102482521.5f378f29b54ad.jpg"
  if [ -s "$WEB_ROOT/images/behance/b63ecf102482521.5f378f29b54ad.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/b63ecf102482521.5f378f29b54ad.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/711ac3102482521.5f378f29b603a.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/711ac3102482521.5f378f29b603a.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/max_3840/711ac3102482521.5f378f29b603a.jpg"
  if [ -s "$WEB_ROOT/images/behance/711ac3102482521.5f378f29b603a.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/711ac3102482521.5f378f29b603a.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/b0657a102482521.5f378f29b6867.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/b0657a102482521.5f378f29b6867.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/max_3840/b0657a102482521.5f378f29b6867.jpg"
  if [ -s "$WEB_ROOT/images/behance/b0657a102482521.5f378f29b6867.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/b0657a102482521.5f378f29b6867.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/d60ded102482521.5f378f29b6f06.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/d60ded102482521.5f378f29b6f06.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/max_3840/d60ded102482521.5f378f29b6f06.jpg"
  if [ -s "$WEB_ROOT/images/behance/d60ded102482521.5f378f29b6f06.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/d60ded102482521.5f378f29b6f06.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/210add102482521.5f378f29b81dc.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/210add102482521.5f378f29b81dc.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/max_3840/210add102482521.5f378f29b81dc.jpg"
  if [ -s "$WEB_ROOT/images/behance/210add102482521.5f378f29b81dc.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/210add102482521.5f378f29b81dc.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/663591102482521.5f378f29b9e39.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/663591102482521.5f378f29b9e39.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/max_3840/663591102482521.5f378f29b9e39.jpg"
  if [ -s "$WEB_ROOT/images/behance/663591102482521.5f378f29b9e39.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/663591102482521.5f378f29b9e39.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/485b5b102482521.5f378f29b7bf6.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/485b5b102482521.5f378f29b7bf6.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/max_3840/485b5b102482521.5f378f29b7bf6.jpg"
  if [ -s "$WEB_ROOT/images/behance/485b5b102482521.5f378f29b7bf6.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/485b5b102482521.5f378f29b7bf6.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/8a5f9a102482521.5f378f29b873d.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/8a5f9a102482521.5f378f29b873d.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/max_3840/8a5f9a102482521.5f378f29b873d.jpg"
  if [ -s "$WEB_ROOT/images/behance/8a5f9a102482521.5f378f29b873d.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/8a5f9a102482521.5f378f29b873d.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/725692102482521.5f378f29ba386.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/725692102482521.5f378f29ba386.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/max_3840/725692102482521.5f378f29ba386.jpg"
  if [ -s "$WEB_ROOT/images/behance/725692102482521.5f378f29ba386.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/725692102482521.5f378f29ba386.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/a3cc61102482521.5f378f29b8f72.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/a3cc61102482521.5f378f29b8f72.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/max_3840/a3cc61102482521.5f378f29b8f72.jpg"
  if [ -s "$WEB_ROOT/images/behance/a3cc61102482521.5f378f29b8f72.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/a3cc61102482521.5f378f29b8f72.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/889992102482521.5f378f29baedd.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/889992102482521.5f378f29baedd.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/max_3840/889992102482521.5f378f29baedd.jpg"
  if [ -s "$WEB_ROOT/images/behance/889992102482521.5f378f29baedd.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/889992102482521.5f378f29baedd.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/5dde9e102445331.5f36918dd8278.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/5dde9e102445331.5f36918dd8278.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/5dde9e102445331.5f36918dd8278.jpg"
  if [ -s "$WEB_ROOT/images/behance/5dde9e102445331.5f36918dd8278.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/5dde9e102445331.5f36918dd8278.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/b57d61102445331.5f36918e69445.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/b57d61102445331.5f36918e69445.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/b57d61102445331.5f36918e69445.jpg"
  if [ -s "$WEB_ROOT/images/behance/b57d61102445331.5f36918e69445.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/b57d61102445331.5f36918e69445.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/908261102445331.5f36918e71393.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/908261102445331.5f36918e71393.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/908261102445331.5f36918e71393.jpg"
  if [ -s "$WEB_ROOT/images/behance/908261102445331.5f36918e71393.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/908261102445331.5f36918e71393.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/c8be52102445331.5f36918e77236.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/c8be52102445331.5f36918e77236.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/c8be52102445331.5f36918e77236.jpg"
  if [ -s "$WEB_ROOT/images/behance/c8be52102445331.5f36918e77236.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/c8be52102445331.5f36918e77236.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/0dc2ba102445331.5f36918e6fd6b.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/0dc2ba102445331.5f36918e6fd6b.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/0dc2ba102445331.5f36918e6fd6b.jpg"
  if [ -s "$WEB_ROOT/images/behance/0dc2ba102445331.5f36918e6fd6b.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/0dc2ba102445331.5f36918e6fd6b.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/623d77102445331.5f36918e6cf1f.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/623d77102445331.5f36918e6cf1f.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/623d77102445331.5f36918e6cf1f.jpg"
  if [ -s "$WEB_ROOT/images/behance/623d77102445331.5f36918e6cf1f.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/623d77102445331.5f36918e6cf1f.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/1e8eb7102445331.5f36918e754b1.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/1e8eb7102445331.5f36918e754b1.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/1e8eb7102445331.5f36918e754b1.jpg"
  if [ -s "$WEB_ROOT/images/behance/1e8eb7102445331.5f36918e754b1.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/1e8eb7102445331.5f36918e754b1.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/2ecf2e102445331.5f36918e6edeb.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/2ecf2e102445331.5f36918e6edeb.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/2ecf2e102445331.5f36918e6edeb.jpg"
  if [ -s "$WEB_ROOT/images/behance/2ecf2e102445331.5f36918e6edeb.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/2ecf2e102445331.5f36918e6edeb.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/22808f102445331.5f36918e6b108.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/22808f102445331.5f36918e6b108.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/22808f102445331.5f36918e6b108.jpg"
  if [ -s "$WEB_ROOT/images/behance/22808f102445331.5f36918e6b108.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/22808f102445331.5f36918e6b108.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/a1f989102445331.5f36918e759b1.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/a1f989102445331.5f36918e759b1.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/a1f989102445331.5f36918e759b1.jpg"
  if [ -s "$WEB_ROOT/images/behance/a1f989102445331.5f36918e759b1.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/a1f989102445331.5f36918e759b1.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/383903102445331.5f36918e68102.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/383903102445331.5f36918e68102.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/383903102445331.5f36918e68102.jpg"
  if [ -s "$WEB_ROOT/images/behance/383903102445331.5f36918e68102.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/383903102445331.5f36918e68102.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/cae17e102445331.5f36918e68cf3.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/cae17e102445331.5f36918e68cf3.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/cae17e102445331.5f36918e68cf3.jpg"
  if [ -s "$WEB_ROOT/images/behance/cae17e102445331.5f36918e68cf3.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/cae17e102445331.5f36918e68cf3.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/72f1dd102445331.5f36918e6ab17.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/72f1dd102445331.5f36918e6ab17.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/72f1dd102445331.5f36918e6ab17.jpg"
  if [ -s "$WEB_ROOT/images/behance/72f1dd102445331.5f36918e6ab17.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/72f1dd102445331.5f36918e6ab17.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/25d82a102445331.5f36918e6e652.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/25d82a102445331.5f36918e6e652.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/25d82a102445331.5f36918e6e652.jpg"
  if [ -s "$WEB_ROOT/images/behance/25d82a102445331.5f36918e6e652.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/25d82a102445331.5f36918e6e652.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/4b5b73102445331.5f36918e719e0.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/4b5b73102445331.5f36918e719e0.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/4b5b73102445331.5f36918e719e0.jpg"
  if [ -s "$WEB_ROOT/images/behance/4b5b73102445331.5f36918e719e0.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/4b5b73102445331.5f36918e719e0.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/7f0af8102445331.5f36918e6de56.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/7f0af8102445331.5f36918e6de56.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/7f0af8102445331.5f36918e6de56.jpg"
  if [ -s "$WEB_ROOT/images/behance/7f0af8102445331.5f36918e6de56.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/7f0af8102445331.5f36918e6de56.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/db84a7102445331.5f36918e67a5f.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/db84a7102445331.5f36918e67a5f.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/db84a7102445331.5f36918e67a5f.jpg"
  if [ -s "$WEB_ROOT/images/behance/db84a7102445331.5f36918e67a5f.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/db84a7102445331.5f36918e67a5f.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/027e48102445331.5f36918e6b882.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/027e48102445331.5f36918e6b882.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/027e48102445331.5f36918e6b882.jpg"
  if [ -s "$WEB_ROOT/images/behance/027e48102445331.5f36918e6b882.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/027e48102445331.5f36918e6b882.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/aef226102445331.5f36918e70c2f.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/aef226102445331.5f36918e70c2f.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/aef226102445331.5f36918e70c2f.jpg"
  if [ -s "$WEB_ROOT/images/behance/aef226102445331.5f36918e70c2f.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/aef226102445331.5f36918e70c2f.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/256ee1102445331.5f36918e6bfce.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/256ee1102445331.5f36918e6bfce.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/256ee1102445331.5f36918e6bfce.jpg"
  if [ -s "$WEB_ROOT/images/behance/256ee1102445331.5f36918e6bfce.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/256ee1102445331.5f36918e6bfce.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/855244102445331.5f36918e6d8d9.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/855244102445331.5f36918e6d8d9.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/855244102445331.5f36918e6d8d9.jpg"
  if [ -s "$WEB_ROOT/images/behance/855244102445331.5f36918e6d8d9.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/855244102445331.5f36918e6d8d9.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/5f9950102445331.5f36918e6c790.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/5f9950102445331.5f36918e6c790.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/5f9950102445331.5f36918e6c790.jpg"
  if [ -s "$WEB_ROOT/images/behance/5f9950102445331.5f36918e6c790.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/5f9950102445331.5f36918e6c790.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/4207f1102445331.5f36918e69a2a.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/4207f1102445331.5f36918e69a2a.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/4207f1102445331.5f36918e69a2a.jpg"
  if [ -s "$WEB_ROOT/images/behance/4207f1102445331.5f36918e69a2a.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/4207f1102445331.5f36918e69a2a.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/3337ff102445331.5f36918e6f44e.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/3337ff102445331.5f36918e6f44e.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/3337ff102445331.5f36918e6f44e.jpg"
  if [ -s "$WEB_ROOT/images/behance/3337ff102445331.5f36918e6f44e.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/3337ff102445331.5f36918e6f44e.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/0061b1102445331.5f36918e6a289.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/0061b1102445331.5f36918e6a289.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/0061b1102445331.5f36918e6a289.jpg"
  if [ -s "$WEB_ROOT/images/behance/0061b1102445331.5f36918e6a289.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/0061b1102445331.5f36918e6a289.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/b5de7d102445331.5f36918e6876e.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/b5de7d102445331.5f36918e6876e.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/b5de7d102445331.5f36918e6876e.jpg"
  if [ -s "$WEB_ROOT/images/behance/b5de7d102445331.5f36918e6876e.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/b5de7d102445331.5f36918e6876e.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/ce053c102445331.5f36918e72d8c.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/ce053c102445331.5f36918e72d8c.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/ce053c102445331.5f36918e72d8c.jpg"
  if [ -s "$WEB_ROOT/images/behance/ce053c102445331.5f36918e72d8c.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/ce053c102445331.5f36918e72d8c.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/b211d9102445331.5f36918e74d9b.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/b211d9102445331.5f36918e74d9b.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/b211d9102445331.5f36918e74d9b.jpg"
  if [ -s "$WEB_ROOT/images/behance/b211d9102445331.5f36918e74d9b.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/b211d9102445331.5f36918e74d9b.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/3906b2102445331.5f36918e73d37.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/3906b2102445331.5f36918e73d37.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/3906b2102445331.5f36918e73d37.jpg"
  if [ -s "$WEB_ROOT/images/behance/3906b2102445331.5f36918e73d37.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/3906b2102445331.5f36918e73d37.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/b04cff102445331.5f36918e71f10.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/b04cff102445331.5f36918e71f10.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/b04cff102445331.5f36918e71f10.jpg"
  if [ -s "$WEB_ROOT/images/behance/b04cff102445331.5f36918e71f10.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/b04cff102445331.5f36918e71f10.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/76fb86102445331.5f36918e78a14.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/76fb86102445331.5f36918e78a14.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/76fb86102445331.5f36918e78a14.jpg"
  if [ -s "$WEB_ROOT/images/behance/76fb86102445331.5f36918e78a14.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/76fb86102445331.5f36918e78a14.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/b6ede1102445331.5f36918e76b69.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/b6ede1102445331.5f36918e76b69.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/b6ede1102445331.5f36918e76b69.jpg"
  if [ -s "$WEB_ROOT/images/behance/b6ede1102445331.5f36918e76b69.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/b6ede1102445331.5f36918e76b69.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/0dda13102445331.5f36918e781bc.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/0dda13102445331.5f36918e781bc.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/0dda13102445331.5f36918e781bc.jpg"
  if [ -s "$WEB_ROOT/images/behance/0dda13102445331.5f36918e781bc.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/0dda13102445331.5f36918e781bc.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/736539102445331.5f36918e76374.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/736539102445331.5f36918e76374.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/736539102445331.5f36918e76374.jpg"
  if [ -s "$WEB_ROOT/images/behance/736539102445331.5f36918e76374.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/736539102445331.5f36918e76374.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/097853102445331.5f36918e726c4.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/097853102445331.5f36918e726c4.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/097853102445331.5f36918e726c4.jpg"
  if [ -s "$WEB_ROOT/images/behance/097853102445331.5f36918e726c4.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/097853102445331.5f36918e726c4.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/4e05b6102445331.5f36918e7456e.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/4e05b6102445331.5f36918e7456e.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/4e05b6102445331.5f36918e7456e.jpg"
  if [ -s "$WEB_ROOT/images/behance/4e05b6102445331.5f36918e7456e.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/4e05b6102445331.5f36918e7456e.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/652b2b102445331.5f36918e77911.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/652b2b102445331.5f36918e77911.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/652b2b102445331.5f36918e77911.jpg"
  if [ -s "$WEB_ROOT/images/behance/652b2b102445331.5f36918e77911.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/652b2b102445331.5f36918e77911.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/e6bd61102445331.5f36918e734f4.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/e6bd61102445331.5f36918e734f4.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/e6bd61102445331.5f36918e734f4.jpg"
  if [ -s "$WEB_ROOT/images/behance/e6bd61102445331.5f36918e734f4.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/e6bd61102445331.5f36918e734f4.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/80b4d0102445331.5f36918e704b6.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/80b4d0102445331.5f36918e704b6.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/80b4d0102445331.5f36918e704b6.jpg"
  if [ -s "$WEB_ROOT/images/behance/80b4d0102445331.5f36918e704b6.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/80b4d0102445331.5f36918e704b6.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/47db4284906235.5d6c0a889a461.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/47db4284906235.5d6c0a889a461.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/47db4284906235.5d6c0a889a461.jpg"
  if [ -s "$WEB_ROOT/images/behance/47db4284906235.5d6c0a889a461.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/47db4284906235.5d6c0a889a461.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/88e99a84906235.5d6c0a8898b4b.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/88e99a84906235.5d6c0a8898b4b.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/88e99a84906235.5d6c0a8898b4b.jpg"
  if [ -s "$WEB_ROOT/images/behance/88e99a84906235.5d6c0a8898b4b.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/88e99a84906235.5d6c0a8898b4b.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/b5f2ff84906235.5d6c0a889ad81.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/b5f2ff84906235.5d6c0a889ad81.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/b5f2ff84906235.5d6c0a889ad81.jpg"
  if [ -s "$WEB_ROOT/images/behance/b5f2ff84906235.5d6c0a889ad81.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/b5f2ff84906235.5d6c0a889ad81.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/0ee54684906235.5d6c0a88997c8.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/0ee54684906235.5d6c0a88997c8.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/0ee54684906235.5d6c0a88997c8.jpg"
  if [ -s "$WEB_ROOT/images/behance/0ee54684906235.5d6c0a88997c8.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/0ee54684906235.5d6c0a88997c8.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/6b046084906235.5d6c0a8898f6a.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/6b046084906235.5d6c0a8898f6a.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/6b046084906235.5d6c0a8898f6a.jpg"
  if [ -s "$WEB_ROOT/images/behance/6b046084906235.5d6c0a8898f6a.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/6b046084906235.5d6c0a8898f6a.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/493cd184906235.5d6c0a8899c0c.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/493cd184906235.5d6c0a8899c0c.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/493cd184906235.5d6c0a8899c0c.jpg"
  if [ -s "$WEB_ROOT/images/behance/493cd184906235.5d6c0a8899c0c.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/493cd184906235.5d6c0a8899c0c.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/84735884906235.5d6c0a889934e.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/84735884906235.5d6c0a889934e.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/84735884906235.5d6c0a889934e.jpg"
  if [ -s "$WEB_ROOT/images/behance/84735884906235.5d6c0a889934e.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/84735884906235.5d6c0a889934e.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/53d64d84906235.5d6c0a889b18b.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/53d64d84906235.5d6c0a889b18b.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/53d64d84906235.5d6c0a889b18b.jpg"
  if [ -s "$WEB_ROOT/images/behance/53d64d84906235.5d6c0a889b18b.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/53d64d84906235.5d6c0a889b18b.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/a761a284906235.5d6c0a8898644.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/a761a284906235.5d6c0a8898644.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/a761a284906235.5d6c0a8898644.jpg"
  if [ -s "$WEB_ROOT/images/behance/a761a284906235.5d6c0a8898644.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/a761a284906235.5d6c0a8898644.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/60518284906235.5d6c0a889a8df.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/60518284906235.5d6c0a889a8df.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/60518284906235.5d6c0a889a8df.jpg"
  if [ -s "$WEB_ROOT/images/behance/60518284906235.5d6c0a889a8df.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/60518284906235.5d6c0a889a8df.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/996cb784906235.5d6c0a889a06c.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/996cb784906235.5d6c0a889a06c.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/source/996cb784906235.5d6c0a889a06c.jpg"
  if [ -s "$WEB_ROOT/images/behance/996cb784906235.5d6c0a889a06c.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/996cb784906235.5d6c0a889a06c.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/b97b2084817291.5d68a1747e1bc.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/b97b2084817291.5d68a1747e1bc.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/b97b2084817291.5d68a1747e1bc.jpg"
  if [ -s "$WEB_ROOT/images/behance/b97b2084817291.5d68a1747e1bc.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/b97b2084817291.5d68a1747e1bc.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/ab86fc84817291.5d68a1747ee83.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/ab86fc84817291.5d68a1747ee83.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/ab86fc84817291.5d68a1747ee83.jpg"
  if [ -s "$WEB_ROOT/images/behance/ab86fc84817291.5d68a1747ee83.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/ab86fc84817291.5d68a1747ee83.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/b1b1bd84817291.5d68a1747d6d4.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/b1b1bd84817291.5d68a1747d6d4.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/b1b1bd84817291.5d68a1747d6d4.jpg"
  if [ -s "$WEB_ROOT/images/behance/b1b1bd84817291.5d68a1747d6d4.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/b1b1bd84817291.5d68a1747d6d4.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/7220ab84817291.5db9af219fc0b.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/7220ab84817291.5db9af219fc0b.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/7220ab84817291.5db9af219fc0b.jpg"
  if [ -s "$WEB_ROOT/images/behance/7220ab84817291.5db9af219fc0b.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/7220ab84817291.5db9af219fc0b.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/2ddd8684817291.5d68a1747e71a.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/2ddd8684817291.5d68a1747e71a.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/2ddd8684817291.5d68a1747e71a.jpg"
  if [ -s "$WEB_ROOT/images/behance/2ddd8684817291.5d68a1747e71a.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/2ddd8684817291.5d68a1747e71a.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/1513d284817291.5d68a1747cb1a.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/1513d284817291.5d68a1747cb1a.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/1513d284817291.5d68a1747cb1a.jpg"
  if [ -s "$WEB_ROOT/images/behance/1513d284817291.5d68a1747cb1a.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/1513d284817291.5d68a1747cb1a.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/aa4dca84817291.5d68a1747b295.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/aa4dca84817291.5d68a1747b295.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/aa4dca84817291.5d68a1747b295.jpg"
  if [ -s "$WEB_ROOT/images/behance/aa4dca84817291.5d68a1747b295.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/aa4dca84817291.5d68a1747b295.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/ab572384817291.5d68a1747eb05.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/ab572384817291.5d68a1747eb05.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/ab572384817291.5d68a1747eb05.jpg"
  if [ -s "$WEB_ROOT/images/behance/ab572384817291.5d68a1747eb05.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/ab572384817291.5d68a1747eb05.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/1f4d7884817291.5d68a1747d185.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/1f4d7884817291.5d68a1747d185.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/1f4d7884817291.5d68a1747d185.jpg"
  if [ -s "$WEB_ROOT/images/behance/1f4d7884817291.5d68a1747d185.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/1f4d7884817291.5d68a1747d185.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/95ab3484817291.5d68a1747baea.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/95ab3484817291.5d68a1747baea.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/95ab3484817291.5d68a1747baea.jpg"
  if [ -s "$WEB_ROOT/images/behance/95ab3484817291.5d68a1747baea.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/95ab3484817291.5d68a1747baea.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/3d6bb484817291.5d68a1747dd2c.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/3d6bb484817291.5d68a1747dd2c.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/3d6bb484817291.5d68a1747dd2c.jpg"
  if [ -s "$WEB_ROOT/images/behance/3d6bb484817291.5d68a1747dd2c.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/3d6bb484817291.5d68a1747dd2c.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/2ef29584817291.5d68a1747f961.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/2ef29584817291.5d68a1747f961.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/2ef29584817291.5d68a1747f961.jpg"
  if [ -s "$WEB_ROOT/images/behance/2ef29584817291.5d68a1747f961.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/2ef29584817291.5d68a1747f961.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/e9dc3f84817291.5d68a1747f592.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/e9dc3f84817291.5d68a1747f592.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/e9dc3f84817291.5d68a1747f592.jpg"
  if [ -s "$WEB_ROOT/images/behance/e9dc3f84817291.5d68a1747f592.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/e9dc3f84817291.5d68a1747f592.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/63d0b984817291.5d68a1747b6f7.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/63d0b984817291.5d68a1747b6f7.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/63d0b984817291.5d68a1747b6f7.jpg"
  if [ -s "$WEB_ROOT/images/behance/63d0b984817291.5d68a1747b6f7.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/63d0b984817291.5d68a1747b6f7.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/812d1b84817291.5d68a1747c4cf.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/812d1b84817291.5d68a1747c4cf.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/812d1b84817291.5d68a1747c4cf.jpg"
  if [ -s "$WEB_ROOT/images/behance/812d1b84817291.5d68a1747c4cf.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/812d1b84817291.5d68a1747c4cf.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/121b9983659489.5f2ebae281625.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/121b9983659489.5f2ebae281625.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/121b9983659489.5f2ebae281625.jpg"
  if [ -s "$WEB_ROOT/images/behance/121b9983659489.5f2ebae281625.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/121b9983659489.5f2ebae281625.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/bc193883659489.5f2ebae281f1f.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/bc193883659489.5f2ebae281f1f.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/bc193883659489.5f2ebae281f1f.jpg"
  if [ -s "$WEB_ROOT/images/behance/bc193883659489.5f2ebae281f1f.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/bc193883659489.5f2ebae281f1f.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/e9b42779482109.5cc44cd7b84a3.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/e9b42779482109.5cc44cd7b84a3.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/fs/e9b42779482109.5cc44cd7b84a3.jpg"
  if [ -s "$WEB_ROOT/images/behance/e9b42779482109.5cc44cd7b84a3.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/e9b42779482109.5cc44cd7b84a3.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/ab02f579469939.5cc3c21851ec3.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/ab02f579469939.5cc3c21851ec3.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/1400_webp/ab02f579469939.5cc3c21851ec3.jpg"
  if [ -s "$WEB_ROOT/images/behance/ab02f579469939.5cc3c21851ec3.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/ab02f579469939.5cc3c21851ec3.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/behance/f68e6a79469923.5cc3c1dd40504.jpg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/behance/f68e6a79469923.5cc3c1dd40504.jpg" "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/f68e6a79469923.5cc3c1dd40504.jpg"
  if [ -s "$WEB_ROOT/images/behance/f68e6a79469923.5cc3c1dd40504.jpg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/behance/f68e6a79469923.5cc3c1dd40504.jpg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi

# === wechat (256 张) ===
if [ ! -s "$WEB_ROOT/images/wechat/wx_77c35b8e.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_77c35b8e.png" "https://mmbiz.qpic.cn/mmbiz_png/zE5JBLXg2fYtueoEciauWHMxcsnNC0J3saMkLqEttibgDRLpyiajFuTw4uYsp0atqiaBlibhp2DicRFgoiahviaFPdEMjicPgY29abz8jAOCQmSynHNw/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_77c35b8e.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_77c35b8e.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_eca795a.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_eca795a.png" "https://mmbiz.qpic.cn/mmbiz_png/zE5JBLXg2fYSMc22aGu0zyv40MaRcjhONoGGNp94SLv7icsL6iaIlIbCibChStiac6vHVUx7ibyk202HkpUgu2Mib5erXVJHzhgZ9jia3dSe9iad5wk/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_eca795a.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_eca795a.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_6f36a2c4.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_6f36a2c4.png" "https://mmbiz.qpic.cn/mmbiz_png/zE5JBLXg2fbSbbuMRF67k5XCuJDDz17M8Ip5WdnHvGJ3iceibA9sQm81ib0ypNjuen4MbSmQugmricW8Dm6Wickt00aBBdDS1XqDpSG1WAUcZfew/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_6f36a2c4.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_6f36a2c4.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_72e4033f.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_72e4033f.png" "https://mmbiz.qpic.cn/mmbiz_png/zE5JBLXg2fZn14ibJKghuE6mGN9mSdlkRdkDlB8e5Qibh775dlnzGtz6xE4odEuSibIiaevp0nh7kvTT68hiaxdQTQyNewHlaTgb8Xia2KKjpM4og/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_72e4033f.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_72e4033f.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_348d7f5f.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_348d7f5f.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/zE5JBLXg2fZLl0l8CZiaD3H3dWzJ8dmZculpQ2UQumIXWicud6nIEgtiaLuBh9YRGZW5ibVak74xyA2KKkddibBqrETwbUnW3aibUCycbQ2xd3AgU/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_348d7f5f.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_348d7f5f.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_3918a144.gif" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_3918a144.gif" "https://mmbiz.qpic.cn/sz_mmbiz_gif/zE5JBLXg2fYsTXqdNU1GtWuSKhxKBuR92okatfDiaNUMfMcple7XJSLRHkqvgw7dAzDQibnmN6q5hr6g00UcoYQQtkdkFqppPHmrPTwo15x8s/640?wx_fmt=gif&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_3918a144.gif" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_3918a144.gif"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_2e03756a.gif" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_2e03756a.gif" "https://mmbiz.qpic.cn/mmbiz_gif/zE5JBLXg2fYjSy9JhJlXIIrxKBejI3nEkiaDoUloAK9QlYicIWNZVrfOWzS9y2Vn7NWUFVHf1w3POQMpNZ06zTFpTrYwLTzagfWuEEFSA23y8/640?wx_fmt=gif&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_2e03756a.gif" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_2e03756a.gif"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_36c49187.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_36c49187.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/zE5JBLXg2fZQGYIYcH74uqvia7PXpPqj1G9Hjfqa2JtvVKrXQdc2y9no0E2XfHRp4LwtgAyBJeZdK1ZnlsyfoWMB9X8lSN63T1ia6cy3fxhQ8/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_36c49187.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_36c49187.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_554c0087.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_554c0087.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/zE5JBLXg2fbe189xxib0NRX1IUAl6epMJHibUtFeP61oTVeQRzVY6werkgHVO4xKic6HGSJHmX8tjntYOrd7kUJehExtyCVF2fibzUkvOvMKg80/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_554c0087.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_554c0087.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_7a678d55.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_7a678d55.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/zE5JBLXg2fYbjHCcGYGO2r71jA5DDXaiaibq7iav6VbTXFaqVUkynYN49q1pSGdfsQW3SFexhSWXwRQeiaPtT9qyRGDmWf18o5Em2zZL4KbaicJU/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_7a678d55.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_7a678d55.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_6bfebe4d.gif" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_6bfebe4d.gif" "https://mmbiz.qpic.cn/sz_mmbiz_gif/zE5JBLXg2faE2yrPHNCKUfWHZqjpvpjkKicX60QbC68IuIrlccpoTno1MQ0zDGP9HXOUibiaBJXrjMInuWj8jp1fg633DAPvHyY4zTbtqpaLfI/640?wx_fmt=gif&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_6bfebe4d.gif" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_6bfebe4d.gif"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_27ee466f.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_27ee466f.png" "https://mmbiz.qpic.cn/mmbiz_png/zE5JBLXg2fbfHGdRqCTw4DwGrOyVMnN8NFaUjnNiaWQpWFJn0kWvCuMAiaJquTtsfxeicw41ukC0t4b79FVkrEPytbpMy5ibEWzIX78WVIFsHYs/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_27ee466f.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_27ee466f.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_7857da40.gif" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_7857da40.gif" "https://mmbiz.qpic.cn/mmbiz_gif/zE5JBLXg2fZzudiaKLRHxkKic2ZjR0kSoJFhXwCMBT6cj29KhQ7WR4LV7iamcvialElNGhaibl1B1mHESjp1koXxRrwQbgC5fBWU9LRrVnDicvn8Y/640?wx_fmt=gif&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_7857da40.gif" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_7857da40.gif"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_669f3260.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_669f3260.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/zE5JBLXg2fZZrLNorDjCsO6HsttVriaNSbhJNoibJpYQk3icVC8UiaE1XINicn7khqkUF6ia07ChicjnOo8kPRvmeyWNWVwHlHAjRzNtAQ4bx1j7Cg/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_669f3260.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_669f3260.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_20e7b414.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_20e7b414.png" "https://mmbiz.qpic.cn/mmbiz_png/zE5JBLXg2fYuPFMuZvKnKvFFWL5LwSdJIKciaicmQsscmNJ1uj23zAOuWeq7QIszhFyia0FaEAFs55X4cDzPZRF2sjtMibQwF2wiayPTNyBQI4v4/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_20e7b414.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_20e7b414.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_45f2426b.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_45f2426b.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/zE5JBLXg2faHib1vEOjTSo8gicbjNjrUr1k4KgbmOckjK4RBwAraMicFQQejHibC9f0uFqCPc3ezPjRswyIHv0obwXSMRf2l12P2fLkHKgllhBI/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_45f2426b.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_45f2426b.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_747f7f4e.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_747f7f4e.png" "https://mmbiz.qpic.cn/mmbiz_png/zE5JBLXg2fY1Au9ouGymibUhDSRg4RvqD89zdQ7olkxfue2FTnvoDzpqa3PggDTOMusicX02WEUDfhlofib294jGKRoye4UOBo4oFKbVRmW2ko/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_747f7f4e.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_747f7f4e.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_26ac8a76.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_26ac8a76.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/zE5JBLXg2fbFsERia5HALOfsyZ0pK1VVEtWU0aWl7iaicibWuzNOO1EgAzrjEo7YIVtJKXRezpYr463Z6KFlAAhrs9NogjuYYu2K7gFlFrbfWoM/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_26ac8a76.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_26ac8a76.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_48637445.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_48637445.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/zE5JBLXg2fZMBhd6nI2FAzoHKRMdw4JPKQicbfhVVDbQAqbUic62OhYuYcSHALJGWdVf4tZnbsxn5nKXOS6bmj7KT28aTjUZx6n3apIUSeE9s/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_48637445.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_48637445.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_5e9f9d90.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_5e9f9d90.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/zE5JBLXg2fbpmSUXzB4dK6yTxqPQVlXUGMcg8Y1o5CPH18yMKib7E8I3ZRLEjKiaQha9gqS3mWMGRzOVeBbHgGsggaPULgH407KeID2glyc3o/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_5e9f9d90.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_5e9f9d90.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_1bdbb806.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_1bdbb806.png" "https://mmbiz.qpic.cn/mmbiz_png/zE5JBLXg2fbQGswuhgiaK6JdugGX3WVXsLdD2KHz7sdzfcfBiaGcT2S2ZrRNB78T7V3QicD5picEzlKIrSDib6tibxvthD17IIRtEcrx90hjLgFicQ/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_1bdbb806.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_1bdbb806.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_7b0f51cb.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_7b0f51cb.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/zE5JBLXg2fb6R4USGftz5erc35lo81VC8IXs2oibLIianJ0LeIIB8Nm7VVWibpNwFhb8DLZaz2XBr61E9DLjbRViaKU1eCxIQibREF52NrRQ2QVc/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_7b0f51cb.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_7b0f51cb.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_673c8e3.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_673c8e3.png" "https://mmbiz.qpic.cn/mmbiz_png/zE5JBLXg2fZ0P8DZA1FW7VAyc7Y4l60Y0n5hRfXrJ8mUfaVnTL11vt9KvZeLUjoVSfvy9S6qibLJ3p0OTDUn8zz7q1Nng7CNXovZGtTyvcjs/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_673c8e3.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_673c8e3.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_778425c.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_778425c.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/zE5JBLXg2fbJib7vComMPXvWdp5P0pKIDib8byVMlcacuECGfshTbTKbmTRNw6kiaz9Q1b6TqU4qOK0bKVlMJgShU9X71g3BMLiaiaJ3saCXQJics/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_778425c.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_778425c.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_59903998.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_59903998.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/zE5JBLXg2fapSvSJAmvITWyw5Noia3mClaMyWSibISBWZ8ON16Wibx0WXXJR5DMMy9g52EOlADM6icPyscKvpwRPqtDT67rREfXR6pIgnd2Kx3Y/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_59903998.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_59903998.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_38e11fd1.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_38e11fd1.png" "https://mmbiz.qpic.cn/mmbiz_png/zE5JBLXg2fbFmQYEYYjaICMkGStVrCMXBnic0B7DLLsEARcibsdKjBRJ3woyl0nicvcj6nw6yRL0l5OQjtx8axb2koBicAZAbqr9MU7l7UQibOy4/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_38e11fd1.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_38e11fd1.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_2d0b2e58.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_2d0b2e58.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkhlrOXPeqwxpEPsBqnjgSEQxYbGoeE01G4XgXp5bFIW9sicxzNMUYkRoDAYXSUjka7baklj5Miac49w/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_2d0b2e58.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_2d0b2e58.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_4ad0b9fc.gif" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_4ad0b9fc.gif" "https://mmbiz.qpic.cn/sz_mmbiz_gif/Q6YwCickoKkhsK3UDQtYn7HNLkkpN0BQwrZq2lUY2cdcj7WlicYVQE97FGicDNicAVQTmicxBDXcUCBiaLMNR3CNy3EQ/640?wx_fmt=gif&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_4ad0b9fc.gif" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_4ad0b9fc.gif"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_23c6facb.gif" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_23c6facb.gif" "https://mmbiz.qpic.cn/sz_mmbiz_gif/Q6YwCickoKkhsK3UDQtYn7HNLkkpN0BQwgIBtV7QH997LQaD0D8lCtMn87KzmibQHib9WK11k5QORibNyWibTqCGo8A/640?wx_fmt=gif&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_23c6facb.gif" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_23c6facb.gif"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_34d45116.gif" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_34d45116.gif" "https://mmbiz.qpic.cn/sz_mmbiz_gif/Q6YwCickoKkhsK3UDQtYn7HNLkkpN0BQwKIb3AppMxTttwWziaA2V7MOK0sMUibG9Q2Y9HsJeAGDlN2MwJ8tsL9hg/640?wx_fmt=gif&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_34d45116.gif" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_34d45116.gif"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_70da008b.gif" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_70da008b.gif" "https://mmbiz.qpic.cn/sz_mmbiz_gif/Q6YwCickoKkhsK3UDQtYn7HNLkkpN0BQwdJ34dABHfLeS5loNjicdhXaBE3NetJ90Vd2JibXVmgSwQpeRHdAaNffA/640?wx_fmt=gif&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_70da008b.gif" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_70da008b.gif"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_75713374.gif" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_75713374.gif" "https://mmbiz.qpic.cn/sz_mmbiz_gif/Q6YwCickoKkhsK3UDQtYn7HNLkkpN0BQw3oV0IzZ7ET5N9MN3cuiaMNQ0BStqYbe99F3ShFPT95KJvuIJ5LLqAxQ/640?wx_fmt=gif&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_75713374.gif" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_75713374.gif"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_24542833.gif" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_24542833.gif" "https://mmbiz.qpic.cn/sz_mmbiz_gif/Q6YwCickoKkhsK3UDQtYn7HNLkkpN0BQwksxlQdojSaxHg9lp9fZs942ZvMKUYk3gyWP16mYricWfTia56JibMmibgw/640?wx_fmt=gif&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_24542833.gif" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_24542833.gif"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_764e7b42.gif" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_764e7b42.gif" "https://mmbiz.qpic.cn/sz_mmbiz_gif/Q6YwCickoKkhsK3UDQtYn7HNLkkpN0BQwIStuRGqmoPXSPYlFzWXTQJWu5lPYwGUpQFX63iciaRe2AukAZShGuyTA/640?wx_fmt=gif&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_764e7b42.gif" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_764e7b42.gif"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_17da78a1.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_17da78a1.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkgC8icqcl6iaIUibg9FPvY5KHNdBB43h2aL4uGiaGHbFUVahLcbsIeYAWbsd0icE7IwH3ic8icia6OT4H64HQ/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_17da78a1.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_17da78a1.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_34708b76.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_34708b76.jpeg" "https://mmbiz.qpic.cn/sz_mmbiz_jpg/Q6YwCickoKkgC8icqcl6iaIUibg9FPvY5KHNRE6WPLgtOxGibviaySgYfNJQbXE1ZChyQkJSQgT1rEElHWBrDibKAM70A/640?wx_fmt=jpeg&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_34708b76.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_34708b76.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_3372100f.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_3372100f.jpeg" "https://mmbiz.qpic.cn/sz_mmbiz_jpg/Q6YwCickoKkgC8icqcl6iaIUibg9FPvY5KHN5W67T2eticvTbiaZK6lGsHuB0gLJBMqBSqeAPNRzjYBubjibzLz6ibOTdw/640?wx_fmt=jpeg&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_3372100f.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_3372100f.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_79ae5dc1.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_79ae5dc1.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkgC8icqcl6iaIUibg9FPvY5KHNMzwmVtsNicqORicnribclLHyOsYUlaQDapUU9PdpJwsMjtZLcXicMRQWWg/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_79ae5dc1.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_79ae5dc1.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_51579069.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_51579069.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkgC8icqcl6iaIUibg9FPvY5KHN3PJaOVPs1cbasD2BOUnCiasUB1kcYVXIDGVQrn3Rtda1GQQ8icYxpY7A/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_51579069.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_51579069.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_5ba76a58.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_5ba76a58.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkgC8icqcl6iaIUibg9FPvY5KHNupvT0OCs7Q5gC1Ejrcoq20VicBu5vDt1PAHBemksyueYrooGhP4ZF1w/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_5ba76a58.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_5ba76a58.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_72a28104.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_72a28104.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkgC8icqcl6iaIUibg9FPvY5KHNsNiaFbL93BF1Mxz9nM90byYqqVm9G43Rmt9dP7GcVJXibp9C6wa9uibmQ/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_72a28104.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_72a28104.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_4dc0fb3b.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_4dc0fb3b.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkgC8icqcl6iaIUibg9FPvY5KHNnVpTvTB2XeJFOWmCmAamYtCdEGzukWu77rW8qPLicIHdSwrhmaAMGlg/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_4dc0fb3b.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_4dc0fb3b.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_27a77af1.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_27a77af1.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkgC8icqcl6iaIUibg9FPvY5KHN8UEyVzvVic8e4oPBZxrD4sFT4sGUdNszuKth7A4T2FesulGKprTs2kA/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_27a77af1.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_27a77af1.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_5c96d1c9.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_5c96d1c9.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkgC8icqcl6iaIUibg9FPvY5KHNWTSzZ1QCnwVJ0XCiaGTJcWDJK0NibQ6hVYn0g1BiagMxsW94KtFS4UfsQ/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_5c96d1c9.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_5c96d1c9.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_283d1405.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_283d1405.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkgC8icqcl6iaIUibg9FPvY5KHNwKN1ibwpiagN9OiasNiapBRoDbGV3qXrhVqcBWsib2Md5qLBLvcsUsDuElw/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_283d1405.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_283d1405.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_4f1ac991.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_4f1ac991.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkgC8icqcl6iaIUibg9FPvY5KHNJxsEjEyuuXyOxAHXianQXhZTrvtYXFz7mTCjMJ6JMDYO98XnTb9mWgg/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_4f1ac991.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_4f1ac991.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_5a7cec7a.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_5a7cec7a.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkgC8icqcl6iaIUibg9FPvY5KHN3DUfR5YGty5fPqic6OGgYV21zEeqA3oYMubKPyEicHnq4vJ5ic7qKw9jw/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_5a7cec7a.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_5a7cec7a.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_4d3012ee.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_4d3012ee.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkgC8icqcl6iaIUibg9FPvY5KHNsY12uGZ3Dftv73YWS5WQjX7tFZWxWRIkCkib9tqnBibDpOe45CDwlMmg/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_4d3012ee.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_4d3012ee.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_416c562d.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_416c562d.png" "http://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkjRTqGJibAAYRdZuMB63NGRLpicN8TyzICR3Cmm8zL3XqSticbgt4gqoW1UPsCm22zaTewDQkGvtUibUA/0?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_416c562d.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_416c562d.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_3ea6bc2d.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_3ea6bc2d.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkj8QylRGShxPibLvv9Nn0Uy9NtHHZyY9nLYfqibtBGia7R6V0lbJ5MjGDfxXS1uR1TIFsvicQcBsOMXbw/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_3ea6bc2d.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_3ea6bc2d.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_207ed167.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_207ed167.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkj8QylRGShxPibLvv9Nn0Uy9jF6hwZdFRF0uEz0O1O406XFz1ppwzia935yzUnHJOjOtXzyfebVkQkw/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_207ed167.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_207ed167.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_d6f864f.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_d6f864f.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkj8QylRGShxPibLvv9Nn0Uy9llbGoZtoG9b2caUYGHBTUiaSLJzIEtiaoM65aPKUzfNBKhjKzp48NvdQ/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_d6f864f.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_d6f864f.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_5c6c6afa.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_5c6c6afa.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkj8QylRGShxPibLvv9Nn0Uy9ndEEs2SnB7A9zZwXUl79dkgSrsyhpymLAYdhD5eIbHkicZUOrpCOcTw/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_5c6c6afa.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_5c6c6afa.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_4e0efe3.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_4e0efe3.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkj8QylRGShxPibLvv9Nn0Uy9GYLlviaRP4JcFxp2MibvEsf5ZqEY1prUqC9p7DyIB49dLmib6JficYPOZA/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_4e0efe3.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_4e0efe3.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_673d7543.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_673d7543.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkj8QylRGShxPibLvv9Nn0Uy9NEeGic7bRDUlf5LHfzoQOTo3y8iav4FXItRxGk3JRuQAYWRY7WMq7xqA/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_673d7543.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_673d7543.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_5045988a.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_5045988a.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkj8QylRGShxPibLvv9Nn0Uy91ZMxOASp0cZKtcT3JWqAk3Gz2eKE9ZVpILkGmpbELeVVsGgVPQRU7A/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_5045988a.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_5045988a.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_5929c03a.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_5929c03a.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkj8QylRGShxPibLvv9Nn0Uy9LyicbwbGUGZZwAnUicIdRm9m5px9nQApeTOe2a180JAwzuYSQuMbNFVw/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_5929c03a.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_5929c03a.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_1396cd2a.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_1396cd2a.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkj8QylRGShxPibLvv9Nn0Uy9Es6SLDExypL7awLgrysnKDQ8LnEajzjM2NvA8jVQraTHXiaB0I5o8sw/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_1396cd2a.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_1396cd2a.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_627fdcc7.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_627fdcc7.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkj8QylRGShxPibLvv9Nn0Uy9A4jL57kqicg4p8BcTWQlSEq5rxONyqCvLoYZZsic71HibAkVdWopt29JQ/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_627fdcc7.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_627fdcc7.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_2bffcd9a.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_2bffcd9a.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkj8QylRGShxPibLvv9Nn0Uy9jBfLJkBMjUiajjwlz5tHpqryUpMBqXCnFW81nrDUpaMdkfe7WnfQkag/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_2bffcd9a.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_2bffcd9a.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_22de4c96.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_22de4c96.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkj8QylRGShxPibLvv9Nn0Uy9AXiclmbFZ8jtSbBCT0ibiaib36UqdBjciaWqPpaQpiaE3Coic8mcKd0BiawDMw/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_22de4c96.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_22de4c96.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_7ebb213f.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_7ebb213f.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkj8QylRGShxPibLvv9Nn0Uy9GwPkc44mXhQfPvqKdbDp7RwW9oaeace3SbOib7HMrzpnFcQymDzVX6A/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_7ebb213f.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_7ebb213f.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_4277c061.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_4277c061.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkj8QylRGShxPibLvv9Nn0Uy9mKnhRSiaywUj64GcziaBxo5AfoFP30JV40RKHq1vIqBKuibJROiabuBJ1Q/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_4277c061.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_4277c061.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_571fa3a0.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_571fa3a0.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkj8QylRGShxPibLvv9Nn0Uy9M93qPib0W7ianNJWTEoHJqYUsPyByCSDwjeAI8gicjWJw6mYJD2CjSHhw/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_571fa3a0.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_571fa3a0.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_52f399ae.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_52f399ae.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkj8QylRGShxPibLvv9Nn0Uy9uvYRtcfvQOAMU88EoEtUFicCvJ6ibkEGDGIYeq6NfvhLJ4WYhTZtbsXg/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_52f399ae.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_52f399ae.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_53f23c29.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_53f23c29.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkj8QylRGShxPibLvv9Nn0Uy9NiaJWXpInf9ODffPOQTVbF9WRg9PL1Js7lwDqngQ9L5x3JZ3VXEgWZQ/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_53f23c29.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_53f23c29.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_26b7ccb9.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_26b7ccb9.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkhmMp9bhlJ6cdibnHDEpcZa5tUZlhIoWa4axUS4jVMTOiazSXvlX0BWSibs0t9CPQZWB7QrcJl03peJg/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_26b7ccb9.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_26b7ccb9.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_24cfa9ec.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_24cfa9ec.jpeg" "https://mmbiz.qpic.cn/sz_mmbiz_jpg/Q6YwCickoKkhmMp9bhlJ6cdibnHDEpcZa56yMRPZGib1RHxALInnuPmgu6UlxlsXVWmWnZas1TOjs9kQ2rTMlzN3Q/640?wx_fmt=jpeg&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_24cfa9ec.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_24cfa9ec.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_1b6d72b1.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_1b6d72b1.jpeg" "https://mmbiz.qpic.cn/sz_mmbiz_jpg/Q6YwCickoKkhmMp9bhlJ6cdibnHDEpcZa5oTxSWAPV60kgxZd3UyVcbV2VbEcrmCXhu3DibAfG7TREdMACVFqaJMA/640?wx_fmt=jpeg&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_1b6d72b1.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_1b6d72b1.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_31c12cdd.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_31c12cdd.jpeg" "https://mmbiz.qpic.cn/sz_mmbiz_jpg/Q6YwCickoKkhmMp9bhlJ6cdibnHDEpcZa5YQ9I5Kr3h1QXCbFg2f1n2w4hia6Zn9TXDM5yF3ibpMvqjicQica3UfwyicQ/640?wx_fmt=jpeg&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_31c12cdd.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_31c12cdd.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_235aaa11.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_235aaa11.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkiazotVbyabgicdbPvroiaTEpiaOwtREqZz3crl1PrRLFqib2ZwQwCp9rE7B5waHYFCiav8HJ9EaFUibDl9w/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_235aaa11.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_235aaa11.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_7eb87cba.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_7eb87cba.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkiazotVbyabgicdbPvroiaTEpiaAuve6tLZTUcaVGiaINkfGiaCWQww03S6e8b2RBRWibI32cjBDWV97DBvQ/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_7eb87cba.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_7eb87cba.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_174c4a7.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_174c4a7.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkiazotVbyabgicdbPvroiaTEpiaAa6BOiceWUdUPoWDFgSx2ibUwdoAssicSDgS74pEsaaJeibbAiceAQgLXHA/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_174c4a7.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_174c4a7.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_49e11e5d.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_49e11e5d.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkiazotVbyabgicdbPvroiaTEpiaowW0GCH9TnFa6aJSUNMbe4lKxH9yW6mbnHAUjJWqzF3iaTZX8PibwnKg/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_49e11e5d.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_49e11e5d.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_3f05944c.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_3f05944c.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkiazotVbyabgicdbPvroiaTEpianexI2ud14IY4eUYft7g2X2Jx5AiciaZBBC6eslicrmhyNpeJJLRLAGGlg/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_3f05944c.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_3f05944c.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_481b3e81.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_481b3e81.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkiazotVbyabgicdbPvroiaTEpia5Z0LjpTCYPO9hnTNglpGQ2vZQCK9jIOCKNaetG9m48FT6j7ALib5nVw/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_481b3e81.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_481b3e81.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_398603a2.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_398603a2.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkiazotVbyabgicdbPvroiaTEpiaZzABwQ1Shbemxm3qhACuE3ayNcX938FTLSUre1GY4CVJRms06UWY8A/0?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_398603a2.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_398603a2.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_26aaf320.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_26aaf320.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkiazotVbyabgicdbPvroiaTEpia3eyrx9hxuvicTjPGu3NdcoHS3x2QvzRcibAHLKcgMQGvsBuk0DEgYpbg/0?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_26aaf320.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_26aaf320.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_50891af1.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_50891af1.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkiazotVbyabgicdbPvroiaTEpiaEScSvfSYFSEDeom2fJiaY983TGC5wSmsJRgRVPDY9XGrwp6J2A65Daw/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_50891af1.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_50891af1.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_6dc6c8fc.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_6dc6c8fc.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkiazotVbyabgicdbPvroiaTEpiajn5TFv3B3yiblBficndvX3DSibBRZ79TibE11vKQ4jZCWojfBxdQLHBhBg/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_6dc6c8fc.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_6dc6c8fc.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_223fc128.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_223fc128.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkiazotVbyabgicdbPvroiaTEpiaibKnOFEtoJ52TZ3lubt0ic4pMpqib0FU2zGLR06ClTOv0kaOrx6jeNRyw/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_223fc128.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_223fc128.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_85c1526.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_85c1526.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkiazotVbyabgicdbPvroiaTEpiau1rm2Egv7EHz9BolaqICxrDesSrlFibMl9K7BovwVFNRibKlpcA1ccbw/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_85c1526.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_85c1526.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_2a266513.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_2a266513.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkiazotVbyabgicdbPvroiaTEpiaIcCUJuicGcUQW8cozEnFdDHxrSvic99OTuCP9LkeKZNYRddkGVqPFgww/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_2a266513.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_2a266513.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_4912a212.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_4912a212.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkiazotVbyabgicdbPvroiaTEpiabIAMYRJxbs9KFibtrjibUe0zk5GXVhTEmr6p3vyY1YrJILIABmVvOFpw/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_4912a212.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_4912a212.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_35fca742.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_35fca742.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkiazotVbyabgicdbPvroiaTEpia7g7zDj8EkYlZYxlZFhwsjib0WB8icjhTO83lzSla9dT7fDmllvow4VHA/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_35fca742.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_35fca742.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_2ed1cbc0.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_2ed1cbc0.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkiazotVbyabgicdbPvroiaTEpiasPG7aKQwLUpR8RJAmD0rTRS6xwVZJibEIAPOJ3fbFZLicHg8zbOzUwDg/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_2ed1cbc0.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_2ed1cbc0.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_4844bfe1.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_4844bfe1.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkiazotVbyabgicdbPvroiaTEpiaAibBBvek6rTYwHGekP8fxxvhtriaReN34PcJgDepPO8I7myTgBKdiaUKg/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_4844bfe1.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_4844bfe1.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_6f5adca1.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_6f5adca1.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkiazotVbyabgicdbPvroiaTEpiaeVv07Y8EG9v06etib5tnUic3Qaicc9HbpqedrUQj0ErOgUY0BotqSjFjA/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_6f5adca1.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_6f5adca1.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_147332b0.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_147332b0.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkiazotVbyabgicdbPvroiaTEpiaft9AHVcuZxocsibicvh3KiabibuR6NH52Xl6jJ8MV3f3ic60EWozKiaFfc9A/0?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_147332b0.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_147332b0.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_3b6b4eb4.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_3b6b4eb4.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkiajvrGicFulpIdWicnorR5DrODZ3ESAN6mzcLHTWWqHn8g2fZ3icdcBWFxvGdGtl7ff8qoUNx1zBsVdQ/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_3b6b4eb4.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_3b6b4eb4.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_caf61c9.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_caf61c9.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkiajvrGicFulpIdWicnorR5DrOhnmE3yd0BwodTroqtpu6E0zbkNzyv0TXXGdLBCuqQgNEDr1WlvlylA/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_caf61c9.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_caf61c9.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_6e377ad2.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_6e377ad2.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkiajvrGicFulpIdWicnorR5DrOkmjmSCm61687dL7SSUuw9A44uPj5atCmvC3ShWNtIibIuVZ9EWNbGBA/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_6e377ad2.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_6e377ad2.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_3ba34a05.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_3ba34a05.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkiajvrGicFulpIdWicnorR5DrOaVWKPrVzIRhh5RBBLhTgPSQkBPTKEyAibnDvrgPaiaJ1ZA2KIFygbqWg/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_3ba34a05.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_3ba34a05.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_dcc3f4b.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_dcc3f4b.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkiajvrGicFulpIdWicnorR5DrO2uNddnCqbo6biaI2ak7yFhbibbZfOIBk0gzEzewfJFyb4sdBLFRdR9xw/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_dcc3f4b.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_dcc3f4b.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_32e06900.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_32e06900.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkiajvrGicFulpIdWicnorR5DrOoicP80Jpib5oBwDBdVlfR9IXLicSl8AxwVW1qhhxr2wDhF7hqTQXuWZxw/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_32e06900.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_32e06900.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_5931ab9b.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_5931ab9b.jpeg" "https://mmbiz.qpic.cn/sz_mmbiz_jpg/Q6YwCickoKkiajvrGicFulpIdWicnorR5DrO3SVCVeV06ty6PlfYkGNhLMEMwkIPGiaOzdJNia5p8B3bkNag7L1So6Ow/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_5931ab9b.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_5931ab9b.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_2d577b23.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_2d577b23.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkhWyYl1Aqia0NJM1r6Qlicl1ribEYa7Hqe5OlicSibXkicuPFs0dU9Xd8eghiad8unicsoOPT3xzKCjnpU7FA/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_2d577b23.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_2d577b23.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_68e16f3d.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_68e16f3d.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkhWyYl1Aqia0NJM1r6Qlicl1rNFA1MgBwOP0JDDIjiaFoTgY26sibfPM1Q2uGFWRicpIaDSM4lCtjKq9uw/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_68e16f3d.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_68e16f3d.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_7eb1aa4c.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_7eb1aa4c.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkhWyYl1Aqia0NJM1r6Qlicl1rnekHJvF9BDA4GNeStNvOyWQsuRvPaSIGlrUS8aHeOz3eM0gAd04W0Q/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_7eb1aa4c.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_7eb1aa4c.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_59968478.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_59968478.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkhWyYl1Aqia0NJM1r6Qlicl1rhnydYfMxJx7wgHwmQAdQ9DSaX5fSIl8bgEjib6ukoHSXrc0AePL0UBg/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_59968478.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_59968478.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_50dec91f.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_50dec91f.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkhWyYl1Aqia0NJM1r6Qlicl1rbpA19NKEJCTRkC803Gxu56bibTwNYibIHZbibNytGriaJjpE6SvE5KWHQQ/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_50dec91f.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_50dec91f.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_4902c974.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_4902c974.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkhWyYl1Aqia0NJM1r6Qlicl1r5Xltf7l8xMdHvJRLZ5aXPsXfxicF0zazHvsKPZCXy0nC0qHmIPTiaR9w/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_4902c974.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_4902c974.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_7d9ec95d.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_7d9ec95d.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkjnHugzK2hQcvUmtAvlSxj38ibUMZVVyLlmxgK388Gjia1YFVgKxM3w8r6ANOqvibDu0HzOpdiaogLZ3w/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_7d9ec95d.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_7d9ec95d.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_592d06da.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_592d06da.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkjnHugzK2hQcvUmtAvlSxj3YJ1ricoRn4njOjH4lCsNL5Yt63icojoMqyQtAzehyKHjCO6DNRbDSyoQ/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_592d06da.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_592d06da.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_2af32588.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_2af32588.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkjnHugzK2hQcvUmtAvlSxj3eXaq5EsB4uFCgAia8pzxTVzr9KwZW2F6UJmeLf4C21sHpZAr0sDnhlA/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_2af32588.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_2af32588.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_3a1c52f4.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_3a1c52f4.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkjnHugzK2hQcvUmtAvlSxj3REAxm7PfjqXDvUmjFSg8rlW4MGcE2qgUvyqM9aibslKv8ZJPG0tZMew/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_3a1c52f4.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_3a1c52f4.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_350af322.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_350af322.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkjnHugzK2hQcvUmtAvlSxj3MWDqka1fkmYaL6Hs1U0RCHHYBNzZlqfdx1aoUW4c7OicaUWSMG68wsA/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_350af322.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_350af322.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_73e88469.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_73e88469.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkjnHugzK2hQcvUmtAvlSxj3OS1GNJwkOLzHwA41wVB5GXzK3MrbehpsdYMTeT7pSjOyJPFt5C2YOQ/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_73e88469.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_73e88469.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_b6a720f.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_b6a720f.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkjnHugzK2hQcvUmtAvlSxj3gJU1G713ibqfNhAtr6HVG9Wiahich0fptsKPX8EgB61v6LfdoiccFjKK5g/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_b6a720f.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_b6a720f.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_564925ad.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_564925ad.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkjnHugzK2hQcvUmtAvlSxj3uJOFl7X0DI98djibVA6rMUEM9ziaVRTvDJWiaiaVcicdUllCzx1dALbRJibg/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_564925ad.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_564925ad.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_4124188.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_4124188.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkjnHugzK2hQcvUmtAvlSxj3PC4UkHiaKJe6pXnqqHXRpcVlOMa0XVqdszJvQuSStsJbnicFMIUw7JAw/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_4124188.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_4124188.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_67e125a1.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_67e125a1.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkjdxRLjAcLKkceicWmA6SEEWXr21ficBnUQgWe9c155q3Ribia5NicQ84Y89nrPmMXy3ULnwMOjaVAiaiaNA/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_67e125a1.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_67e125a1.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_1436e601.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_1436e601.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkjdxRLjAcLKkceicWmA6SEEWwlzlKPWpdmeyP5NVSbqEhldAmutY9JsTJScUyp1fRRXddxic3PGyQwA/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_1436e601.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_1436e601.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_6b83fa5.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_6b83fa5.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkjdxRLjAcLKkceicWmA6SEEWIiaJFOMsCdsR9bula7DnzOe50pmdgQEP9hjtbG32gJ8lHRR06VlEjhQ/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_6b83fa5.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_6b83fa5.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_12d6267c.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_12d6267c.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkjdxRLjAcLKkceicWmA6SEEWiav6zEn4VyXdWRut3aia50OpxQSxsoMlFQeC66LlibMJPvMqDRAjaoZPg/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_12d6267c.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_12d6267c.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_3ebc92b1.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_3ebc92b1.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkjdxRLjAcLKkceicWmA6SEEWJY1b4dFJrCa0jkxkWv9iaHsqUyiab6E6XweveouuWc2SWnAicYuMu4CkA/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_3ebc92b1.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_3ebc92b1.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_3f797a3f.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_3f797a3f.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkjdxRLjAcLKkceicWmA6SEEWT8tPib4KzhwTYEKoTaBhjPO6GR04x1cQPljfacQ0ygcDpXTc3UFhCuQ/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_3f797a3f.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_3f797a3f.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_442fb9f8.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_442fb9f8.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkjdxRLjAcLKkceicWmA6SEEWNPJOwVaYfibtBk8uHaUXDFdGEJaGWe5Pcdbicwf6BnwN4ichnMQMqpucA/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_442fb9f8.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_442fb9f8.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_4ffce0b0.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_4ffce0b0.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkjdxRLjAcLKkceicWmA6SEEWGibFpqwIVRyxqzlcKYarsxbXVbHjF56aibC8iacFhpyvtkqrtYKEX1Xqw/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_4ffce0b0.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_4ffce0b0.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_4a9515a1.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_4a9515a1.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkjdxRLjAcLKkceicWmA6SEEWNhphicTFlZp4GicUHFCZXU9QNblBmibNXiacDYJl1TCpC4nQbQUtn5co1Q/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_4a9515a1.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_4a9515a1.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_7d6b3e98.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_7d6b3e98.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkjdxRLjAcLKkceicWmA6SEEW2QgdAkHsOLEvcFYgtIm1PEEdoyzIDY7qjZYPkgcYd7S9DX3N3cTfyg/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_7d6b3e98.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_7d6b3e98.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_38e693f2.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_38e693f2.jpeg" "https://mmbiz.qpic.cn/sz_mmbiz_jpg/Q6YwCickoKkjdxRLjAcLKkceicWmA6SEEWl6s81vL8ibtODTSBaSS9a8hia6tfys1ZXOC2HqicuCcib4LhZb6icDulReg/640?wx_fmt=jpeg&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_38e693f2.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_38e693f2.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_6d385cfb.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_6d385cfb.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkjdxRLjAcLKkceicWmA6SEEWtQcfSal29PePcRrTbH6ia6sAjaAVMCI0BNstkicDssS00nSvmfkmicSjA/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_6d385cfb.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_6d385cfb.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_6105350e.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_6105350e.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkjqaNhbOgshY7yLGRu7mf1BY1yS8C0CtxrzbTiciboQeAJf6FOcNeIRoXMcC5FNuFTia5jG8iampAvAIg/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_6105350e.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_6105350e.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_13d70f7e.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_13d70f7e.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkjqaNhbOgshY7yLGRu7mf1BXQWRx23eP5M6BHZluL5zPiaaycAf1syChdHdHtc5XjrcriaP8g4aTlxA/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_13d70f7e.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_13d70f7e.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_5cb2e59c.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_5cb2e59c.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkjqaNhbOgshY7yLGRu7mf1Bwn3HPak52WcDlqoP7zZGCGnv7ibr1m51gSFJnr0The0lXWLTYdVR90w/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_5cb2e59c.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_5cb2e59c.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_66292686.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_66292686.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkjqaNhbOgshY7yLGRu7mf1BDnaxXd3A3yVpPJBDlRJKFEIyVe159f6iblQQgRGVoxDCjELYNxRFzAg/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_66292686.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_66292686.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_7daedf37.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_7daedf37.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkjqaNhbOgshY7yLGRu7mf1Ba4dzM6U52ExMEI92KScqV19Fvo1MlOvP1ziccKQM6aWL33zibCjtC3bg/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_7daedf37.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_7daedf37.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_4ac7f7b2.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_4ac7f7b2.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkjqaNhbOgshY7yLGRu7mf1B15dicoq9jO5FOclHLBO5ibY37zZZPX164pTTPFibaLriaXicsOooicMUI8rg/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_4ac7f7b2.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_4ac7f7b2.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_6d4d157e.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_6d4d157e.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkjqaNhbOgshY7yLGRu7mf1BSxYSlz6cU00E0vJcibyyLfQkKoKID7lW9VMmA8l5ZOAiaR6EwRibmaM4Q/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_6d4d157e.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_6d4d157e.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_743746d0.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_743746d0.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkjqaNhbOgshY7yLGRu7mf1BsTuZsbOgALzhTYjicuTB8lZ5lQc7vF8VkYiaA0PKpWq1Ezds2eneRJPw/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_743746d0.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_743746d0.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_59a4ec7f.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_59a4ec7f.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkjqaNhbOgshY7yLGRu7mf1BThGtwmD3zWNEpsNUnKNrq6t2rBkJtXSVXUSLsApgAdLcw8dXqDQEQw/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_59a4ec7f.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_59a4ec7f.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_186f717e.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_186f717e.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkjqaNhbOgshY7yLGRu7mf1BFuBSnX3L7u3SAEib0ZBYe5wARoFMuO6zOLROY9xxPkNibr5wxWE15KSg/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_186f717e.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_186f717e.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_b5e152c.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_b5e152c.png" "https://mmbiz.qpic.cn/sz_mmbiz_png/Q6YwCickoKkjqaNhbOgshY7yLGRu7mf1BYSl0x8Vfj5cicZUeZZicIvsC4I6ruyNyqZYd02u66XREbcZ8I06Dl0BA/640?wx_fmt=png&from=appmsg"
  if [ -s "$WEB_ROOT/images/wechat/wx_b5e152c.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_b5e152c.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_5d24ba3a.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_5d24ba3a.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkhUibNxtGRSmxWAaKWibnUQ7CFBzqSZvFLfPMOwygY4SYfjiblbknlnFl7xJIjJeb4hFMiaN8GjuFibtzw/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_5d24ba3a.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_5d24ba3a.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_1da082f8.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_1da082f8.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkhUibNxtGRSmxWAaKWibnUQ7CaNbB0EsREfCRoyXoj3hOI7EqqS5pqsyDzDeAIFde8ia0J7qYXE6L1UA/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_1da082f8.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_1da082f8.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_2e86f58c.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_2e86f58c.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkhUibNxtGRSmxWAaKWibnUQ7CESyGCQe30eI3ZtY00Tibmia5QGL1dF1cY50P0RlJuAD1fRouswVhTPwA/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_2e86f58c.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_2e86f58c.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_2dd6ac2e.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_2dd6ac2e.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkhUibNxtGRSmxWAaKWibnUQ7CEFKWcgGE19mypDFwHaQdXbibCRP2qoISuCdEvIiapF3YFGlFDE0gFicmg/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_2dd6ac2e.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_2dd6ac2e.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_208ff9a6.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_208ff9a6.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkhUibNxtGRSmxWAaKWibnUQ7C8ADvibhlVAcbE1N0lyHJgnC1icujWICbVqQibDaNOuYqOYAonXF7Sed9g/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_208ff9a6.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_208ff9a6.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_12315bcc.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_12315bcc.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkhUibNxtGRSmxWAaKWibnUQ7Cgxwf04BCdxg9YxGJNYfqUXOvo2VhzTOD4YbbpOyUfjmD3PkvmxGfPA/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_12315bcc.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_12315bcc.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_203e78d1.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_203e78d1.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkh1ciauvJolEGV66icDNNCZUvSOsvyhWXNhsHXAt6YicDL9DpnujA7GFFRZ1SibBQvP35pVV6dMyp5llQ/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_203e78d1.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_203e78d1.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_5064897f.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_5064897f.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkh1ciauvJolEGV66icDNNCZUvKyEtG9JPyFgyq71o19ErUqn3yhhvicE1waU3O1wSHlmncKibibfrkTu0Q/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_5064897f.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_5064897f.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_24d574dd.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_24d574dd.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkiapTH6T15KYQicib2Gia0AwKdzwQIfGLjb1bowHWNduufkRhSdFmOCW4yDdSI59M59amxwicskgTv2ibIg/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_24d574dd.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_24d574dd.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_1d81294a.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_1d81294a.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkiapTH6T15KYQicib2Gia0AwKdz8t9HKNcKlm4S0LhzwWlr3muTicoUOexzVfiac6X2wK13NdClm5OsbW3w/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_1d81294a.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_1d81294a.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_24ec01e2.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_24ec01e2.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkiapTH6T15KYQicib2Gia0AwKdzebgw3N5PXCFMOFWdpx3JPPAxibbPlyx09ZhVHqJ2ib6BgH9csLIicExmw/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_24ec01e2.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_24ec01e2.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_37adc43b.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_37adc43b.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkiapTH6T15KYQicib2Gia0AwKdzxuCRd8iaOamQGH7SicUgW5nZXE8Ma19Ye4mpewTjO8AHJxKnY1OP8V7A/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_37adc43b.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_37adc43b.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_13291d4.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_13291d4.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkiapTH6T15KYQicib2Gia0AwKdzjxw2W6icMicmD9Cx1o0EorLdXicGqFnAb8VJ3M4SZfyiauH3gAuOa1riaDg/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_13291d4.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_13291d4.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_cee8de2.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_cee8de2.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkiapTH6T15KYQicib2Gia0AwKdzRcVicm0szzF9dRQ1zoNbzDghbicMGNSZcWH69icAv9YiaXIg2FiccWU9rhQ/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_cee8de2.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_cee8de2.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_4068ba98.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_4068ba98.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkiapTH6T15KYQicib2Gia0AwKdznf2uCBe1PAWByMbfzJFkZ5fc5SichKkssRPYia3lHuagXlgeEanMFxZQ/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_4068ba98.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_4068ba98.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_f91c524.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_f91c524.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkiapTH6T15KYQicib2Gia0AwKdz7IW475X6RDdZWp6Oeg33QDUcOLZHP0Xkl4P7a6cd8lOa9KMcNvuDyA/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_f91c524.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_f91c524.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_418569bf.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_418569bf.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkiapTH6T15KYQicib2Gia0AwKdzeDXPshTZ937qfujZJ0qoO9RLpn8dsxKoicic0XonjjkSWVX6sqkaArwg/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_418569bf.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_418569bf.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_4b1feaf6.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_4b1feaf6.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkiapTH6T15KYQicib2Gia0AwKdzlwJ5j0JIsCBqZOJntZzicrJVclD0gh73EJ0vjwCBDYWyjKhoJF2FYew/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_4b1feaf6.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_4b1feaf6.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_e3215f7.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_e3215f7.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkiapTH6T15KYQicib2Gia0AwKdzwsS5wYzjsQpBgKKqhFGXtbWreXicj7S2jtFGj05iabqsZZRicINYhDGYQ/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_e3215f7.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_e3215f7.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_28c7580.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_28c7580.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkiapTH6T15KYQicib2Gia0AwKdzEialXVjpBEXTicORPiaOdcjiaOd0nak5sokHaUknukQoXrXrmV4VfhmibSw/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_28c7580.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_28c7580.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_8d04fbd.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_8d04fbd.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkiapTH6T15KYQicib2Gia0AwKdzxN3HxA54UlWldoyKBp1ib3BypM6HGR13VUQsk0lWMA21uNtsKVxTA8w/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_8d04fbd.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_8d04fbd.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_4fa3dc86.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_4fa3dc86.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkjBPBBkVteYpbsd4OcibgLFqeMgqUtFgzsS257RRlWFYSdRRDoe3bGicTicZFwUFaHlia9EDMUsxZU6Vw/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_4fa3dc86.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_4fa3dc86.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_4e482a9b.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_4e482a9b.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkjBPBBkVteYpbsd4OcibgLFqHKtO2LZiaQnpyugPoTmqOKrDrM784WYGOnqH0VNvlu85jP6WiaNuxodA/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_4e482a9b.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_4e482a9b.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_13df071.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_13df071.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkjBPBBkVteYpbsd4OcibgLFqyLJPmQJq5gY7Q0PibxPbhEG2nCJDYPibDqFYx1kBq5zZ3odxWyavPCicA/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_13df071.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_13df071.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_39f6ff6b.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_39f6ff6b.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkjBPBBkVteYpbsd4OcibgLFqRfptsl8rUrxvbED0HUibBgDEeU6icS433OhdIMXPoj9RI0dlogiby0gTA/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_39f6ff6b.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_39f6ff6b.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_60ff2f16.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_60ff2f16.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkjBPBBkVteYpbsd4OcibgLFqoIRfYtx4Gd097ibjzHwkcF7rYyiab5G9G5H1c8UwgiaIjKJl1vOlwVT6w/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_60ff2f16.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_60ff2f16.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_532ffe7a.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_532ffe7a.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkjBPBBkVteYpbsd4OcibgLFqliayavJRBG1KR6Eia6Tt8Moy62ZRjnaNcm509Hyib26g3lhJ3HpxkZ6BQ/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_532ffe7a.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_532ffe7a.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_17514da0.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_17514da0.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkjBPBBkVteYpbsd4OcibgLFqTBzVenNEzQiatV1q8YJEsdoedbzVLRvcRetBJF91HRcaxM5WXx4ReLQ/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_17514da0.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_17514da0.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_5eafbe25.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_5eafbe25.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkjBPBBkVteYpbsd4OcibgLFqBS1wGffCYgvEERDicynarm6dVWaHibTkm6WEw3HLEJHiaTB00wCsCZoVQ/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_5eafbe25.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_5eafbe25.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_3de175fd.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_3de175fd.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkjBPBBkVteYpbsd4OcibgLFqhRKl4uWLI5B0dMt2iahG2YKxxvbdicndKjltkunL3Wl1TRrtVaryweXA/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_3de175fd.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_3de175fd.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_2d542258.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_2d542258.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkjBPBBkVteYpbsd4OcibgLFqqvuT0Ek6sia0EobAFqib2jjkNhXEicC86JgMs6O0McAVKl7yf8oQREvPg/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_2d542258.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_2d542258.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_7e34fdcc.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_7e34fdcc.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkjBPBBkVteYpbsd4OcibgLFqwAl2xJ5CLNeqY7icpv3yu1opXhrsoFVcSg7NfDYhhIpibgRP3mIeTxmw/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_7e34fdcc.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_7e34fdcc.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_70c5081.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_70c5081.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkjBPBBkVteYpbsd4OcibgLFq9mxuqoBcMeKXaXdkN5bfCusjeBgogwIqVZ4FmibODL4gxSSF46FaB2g/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_70c5081.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_70c5081.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_59dd8fa1.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_59dd8fa1.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkjBPBBkVteYpbsd4OcibgLFqC94PXZ6oakAm8picpT4L9HJthEFYbOSuwJhM67bC9rTUgeD7Fvibub3Q/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_59dd8fa1.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_59dd8fa1.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_46409f32.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_46409f32.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkjBPBBkVteYpbsd4OcibgLFqZpibKJeBTOapNEXxyIM88Olh7NWEPC1eEqvXg5gJhEC1Fy5CoUicV4mQ/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_46409f32.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_46409f32.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_6d6768f8.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_6d6768f8.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkjBPBBkVteYpbsd4OcibgLFq1ibDHaezXYmO2b7xfjYfZHvzq1O0100RLnEZfUp4NeCf1FbcRaWHYjQ/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_6d6768f8.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_6d6768f8.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_21514a89.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_21514a89.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkjBPBBkVteYpbsd4OcibgLFq8JTRx0sHictZvmrvMibXzK2lbuaqiarTh0NEHDfdvEHwf0BnpGXtvpFmw/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_21514a89.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_21514a89.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_26d236f2.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_26d236f2.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkjBPBBkVteYpbsd4OcibgLFqcGwI06rWfn2frp6UpwibM377jkGoYVoN3y0DrOWL1DfvOdezUYxxgwQ/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_26d236f2.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_26d236f2.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_22419814.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_22419814.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkjBPBBkVteYpbsd4OcibgLFqQI8AmuicFxTT661YEXCfuSjG7CA9GPRd4GibaFLPGib62pz1hkPF6XLdA/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_22419814.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_22419814.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_537657e7.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_537657e7.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkjBPBBkVteYpbsd4OcibgLFqKggxHYFBgoYicDUIPac0h5TGW2Jvm2P8X1CcG6QmQ9QQhdWew1Dd7Qw/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_537657e7.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_537657e7.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_47305709.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_47305709.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkgyOQClvwDtho9eiabguGTqKvs8wL5nU89EkTpqDlV9xPAiaVPwJRTO34gf4Iibd7X0iaE6uhRbtnrPQA/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_47305709.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_47305709.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_1b6b4b88.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_1b6b4b88.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkgnshc240Be5nuyC16y1nxITMfQMMCNAYktzIwDQK58FpmoKEgdHYGj7nLWjVdmM8tcHZedvjALlQ/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_1b6b4b88.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_1b6b4b88.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_21783689.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_21783689.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkgyOQClvwDtho9eiabguGTqKVfxia0fMFykCXrElfBDACu14ewoK9pFujNicvKGf6Ph9icL0WIDjHXs7w/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_21783689.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_21783689.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_2f62c312.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_2f62c312.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkgyOQClvwDtho9eiabguGTqKAB7qic5JoCQqVzZwuicV3hgMuSoAbVpuL57W8ia1apzIleuSHE8oaiaKBQ/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_2f62c312.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_2f62c312.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_208c825c.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_208c825c.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkhPViaGsbj0ApRR25mPvEtic1dXsGuBZ5NBPiclKKPepUMPG6bvbDxHP6SE1IHm1Bib3J0yOHnfuPF5pA/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_208c825c.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_208c825c.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_8666a2f.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_8666a2f.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkhPViaGsbj0ApRR25mPvEtic1yvSqVYzyHeVsjFAEQTTOj835s1iaXlseKN7AXjQVdYmju3vibic4TYIoA/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_8666a2f.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_8666a2f.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_353edbce.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_353edbce.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkhPViaGsbj0ApRR25mPvEtic1EHm39YmNAIhxCmibVPA8icFNh7cIYDSo0kx26icvBCLvL4ApJWHgPJ1iag/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_353edbce.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_353edbce.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_982c42d.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_982c42d.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkhPViaGsbj0ApRR25mPvEtic1xsesjprOO4G85qXaO6qicEu4aJJwNUvRHjL5MO1ic3jiaECwFuht1V9Zg/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_982c42d.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_982c42d.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_ea73eb2.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_ea73eb2.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkhPViaGsbj0ApRR25mPvEtic1BRArrKQxJuNVfCFtfyyyf7EItMTWmx6YveMttMpKY71JsxXRvkDFvg/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_ea73eb2.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_ea73eb2.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_26849a7a.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_26849a7a.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkjDibA0EjfxvFHhqoZ4v2gkibLXuZIPHg5waWYmicNKLRbvibKF4IrWkpGa6icg7QUMOJXxicJCT4PzQoqA/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_26849a7a.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_26849a7a.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_5fa6c0f7.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_5fa6c0f7.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkjDibA0EjfxvFHhqoZ4v2gkibRuKjJfQf6JSJqBsibBY8naIxIGNslhKGlAMLZEgIVEeVm8VOWYdMvibQ/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_5fa6c0f7.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_5fa6c0f7.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_51a30f12.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_51a30f12.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkha8N5bxGtZRkJr0fWPIkiazYeQP38xu0cIiaD7kFD2CPuqAKWRBd5TJvlhS9gfESztANf98YTKkr0A/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_51a30f12.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_51a30f12.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_28ac3705.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_28ac3705.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkha8N5bxGtZRkJr0fWPIkiaz3GZBZxeKHrfGGRdFFrZMMuZIiaAe1T2cAfCvibiaaySuFtXiaBVtlBdFrA/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_28ac3705.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_28ac3705.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_5691cb46.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_5691cb46.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkgiao6ZYYo6uUcyXdHmOCsmV450ORMbicewAfrGEyBzcf5aQrQat2NpqGDQTh5DkSjerVPtqkyhTQ7w/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_5691cb46.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_5691cb46.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_49edd729.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_49edd729.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkge07FMTvRKdnz4rIsHCicG5lpnqkrOOjex0dlLanSBTClFVcTrhbTib6KOD7LCNXKaicmhuQdlsJQ0g/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_49edd729.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_49edd729.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_7267e327.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_7267e327.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkge07FMTvRKdnz4rIsHCicG5HUDqP4GicXpVI1GGPsjkS6bvE8MDGAjFCxxopcxlCEXcSLpMtRjx7vg/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_7267e327.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_7267e327.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_7feb17a7.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_7feb17a7.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkge07FMTvRKdnz4rIsHCicG5Hz7OtuJJ4bT84JM3fCjvsaxPnj0ZKGjwWicgPMGcAkia8X2AIzpagyxQ/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_7feb17a7.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_7feb17a7.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_41138b2b.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_41138b2b.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkge07FMTvRKdnz4rIsHCicG5tciayfkWIGnSicWWUVZQLS9lrG2MbrIGTbVwiaXB2Ig5Pu9ZdEzgN4KKA/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_41138b2b.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_41138b2b.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_55f839d.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_55f839d.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkge07FMTvRKdnz4rIsHCicG50ibSqu2MzwLw10Z9yTPpsPibr1cG0CQKTTF9lX6J5LqGbSlusaTt9xNQ/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_55f839d.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_55f839d.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_658b905b.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_658b905b.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkge07FMTvRKdnz4rIsHCicG5cYkiaRHwUx2Xw53nr5fzjSpT7wQaC1GAXwnh0fJ47OatlzrCs3pGEFw/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_658b905b.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_658b905b.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_7aacbfbb.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_7aacbfbb.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkge07FMTvRKdnz4rIsHCicG5cE1Hy8k755CKnmvHUiayNSjU2SOxNA75AadKtJ0G3XOS9iaUrETiciaBsg/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_7aacbfbb.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_7aacbfbb.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_7673c123.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_7673c123.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkge07FMTvRKdnz4rIsHCicG57tnE0SrOp22wNopuzbFn5ToYibeUCFME3U3Q6RXrLBaQqJV5T1ZSxEA/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_7673c123.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_7673c123.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_1fd3d9b2.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_1fd3d9b2.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkge07FMTvRKdnz4rIsHCicG5mxQWtzQPkbypmb8A5NmiczbGC30zjLTImDoUdChw8IFia4IxgnCIDlicQ/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_1fd3d9b2.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_1fd3d9b2.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_57ce687c.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_57ce687c.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkge07FMTvRKdnz4rIsHCicG5Qg9DNE3VkdNNF2sc44GicBias5GMc0yAUee8BT2KZRnxjfAb1abHjAPQ/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_57ce687c.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_57ce687c.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_4b007dc.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_4b007dc.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkge07FMTvRKdnz4rIsHCicG5BmFkFLM2bUaP1QqEFWxnBBjBIiadlsuhzvTfjnEWbUwanxEAGqbonAQ/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_4b007dc.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_4b007dc.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_5006d039.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_5006d039.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkge07FMTvRKdnz4rIsHCicG5Iwogzo6Wakw4BBDdoOzEvSes1zK3oZucGr6tSwIibMDYRSW86iaBRBSA/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_5006d039.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_5006d039.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_62c0ada.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_62c0ada.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkge07FMTvRKdnz4rIsHCicG5evEkhQA2IxhlyketQTnouvKgIWx221eAlXM33jaKzzD4we45P68WDg/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_62c0ada.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_62c0ada.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_33b71f.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_33b71f.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkge07FMTvRKdnz4rIsHCicG5pCbR0eE6hPSt5ia8ru7Qwxv9utJ0N44fibyDZFyu6JOgllhD1ARicfAQw/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_33b71f.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_33b71f.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_62ee0305.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_62ee0305.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkge07FMTvRKdnz4rIsHCicG5MWxbpPwJAkS3gPRksFnLhxbrhoYfy8HquYYgLqu58Bd8rq2Cst2Leg/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_62ee0305.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_62ee0305.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_1bfb482c.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_1bfb482c.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkge07FMTvRKdnz4rIsHCicG5oXm9RVZlFyGH4P2ZrAR0wnfkZMZ9GVMCNbWk7sVlyDqtMictwx6jpYQ/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_1bfb482c.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_1bfb482c.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_222d5444.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_222d5444.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkge07FMTvRKdnz4rIsHCicG5YVicDRjiajoHDsexRbZL9GO75vXCqNM2szDMNc6axHUFwZvMFUtY5OGA/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_222d5444.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_222d5444.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_790e2014.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_790e2014.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkge07FMTvRKdnz4rIsHCicG5omInq6z0NaSjSr4C33WWlRvzQMPZX9Pibkb6GuOeY5aIvfEKT7PnwGg/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_790e2014.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_790e2014.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_1d02c8a2.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_1d02c8a2.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkge07FMTvRKdnz4rIsHCicG56so8LqMFicOVK7Z2r3WrfRe5Gh3nkWQjtfSfApKHbSqugCKXfAVZ6zA/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_1d02c8a2.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_1d02c8a2.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_7bf7bc28.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_7bf7bc28.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkge07FMTvRKdnz4rIsHCicG5TFRIoEicenGvs6PiaDW9WYY2JmggcibWSd9MypSsaRaOvYVQLMRdvSMSA/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_7bf7bc28.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_7bf7bc28.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_35eb0afe.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_35eb0afe.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkge07FMTvRKdnz4rIsHCicG53cxC3PgK51BkiatBiaMCjEiaA9KQBB33HE2gicbagDwPQyykhtUey2cz9g/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_35eb0afe.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_35eb0afe.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_210c1e85.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_210c1e85.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkge07FMTvRKdnz4rIsHCicG5LTfXUaJYribicMc6a80XjtaaKQR26K17ECVnmhRysyibqMxzBAkaqczwg/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_210c1e85.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_210c1e85.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_2b368745.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_2b368745.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkge07FMTvRKdnz4rIsHCicG5V5t1RYQiamubBg8Q6ZntYeFB4WJ3Bb8BTCRrA9ZW7icqV5uEeMJXv2nQ/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_2b368745.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_2b368745.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_2fddf679.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_2fddf679.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkge07FMTvRKdnz4rIsHCicG5yDOoJcFPSUYR5vibASfXiaibkiarCd06vcCTxR5kkUYaD78KydI5Ycn3uQ/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_2fddf679.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_2fddf679.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_2a50dc1b.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_2a50dc1b.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkge07FMTvRKdnz4rIsHCicG5tCVANnCPJYjTozpXvH1ib1ufruXichpoSdTUAs2QXcyKrDzGuhdVgkfA/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_2a50dc1b.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_2a50dc1b.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_73b022be.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_73b022be.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkge07FMTvRKdnz4rIsHCicG5JwEaHrHMc9BOb8iaImnka5sv2hbsKQ1ln3Y9gChay3HOML9vvIpYkUw/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_73b022be.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_73b022be.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_39bed12c.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_39bed12c.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkge07FMTvRKdnz4rIsHCicG5awicjoJYJzyjKk8hhlQnibEgHz3c4wretw7o06arrZmeb0CJJ8SNzOvQ/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_39bed12c.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_39bed12c.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_74ab9b43.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_74ab9b43.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkge07FMTvRKdnz4rIsHCicG5ECr5KaTvyJjfPAtGCcvMj72SpKia9DE5L17QpCA0EQ2BF0L5a8jX92w/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_74ab9b43.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_74ab9b43.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_7f56b6c0.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_7f56b6c0.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkge07FMTvRKdnz4rIsHCicG5LgEAYMSibPWjnBc3fuRw3n7ZN9ujrAHTETP7bpcBrcOiaKGYa5g45Orw/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_7f56b6c0.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_7f56b6c0.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_284e83dd.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_284e83dd.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkge07FMTvRKdnz4rIsHCicG5eDjCt5bYnzRvutl6E1AwbjIXAVbVIrbQ9GSamSdEmuNmdJJkNLzW6A/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_284e83dd.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_284e83dd.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_21e73bd7.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_21e73bd7.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkge07FMTvRKdnz4rIsHCicG5wRMg8Atjs5YryZKrguyqsElanvc9CduV9LKQz9PMRB3cbPkOdvGVWQ/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_21e73bd7.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_21e73bd7.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_1292896a.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_1292896a.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkge07FMTvRKdnz4rIsHCicG51NsVKPYFR4ribC9hp6MUz6TZUd7fJjuUurnjgMmaW5pZoRA5I8qXheg/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_1292896a.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_1292896a.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_67fe9d6e.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_67fe9d6e.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkh7206jBkyH9ssTW2cNkfEydoS8k8UO2W8cho9qF2WcvbZm7B6LZCIvLvqToaibmktrBv3FIRMJXlQ/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_67fe9d6e.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_67fe9d6e.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_5b3938ad.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_5b3938ad.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkh7206jBkyH9ssTW2cNkfEyibQaFJ9SlsZlPib7oibElj8JDOHLVHiaKia1viablEncBOfzmufian41edB0g/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_5b3938ad.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_5b3938ad.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_58e6a8ef.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_58e6a8ef.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkh7206jBkyH9ssTW2cNkfEyX94auIKgmwA1aE41lJMfpT3sfk5wicxyN1ObK16yCfk6UwbOTVXPJ4A/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_58e6a8ef.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_58e6a8ef.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_36d22ecc.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_36d22ecc.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkh7206jBkyH9ssTW2cNkfEyy52J4o9txvoM7ibBJtPHyR2SFwEwNWiblictbWZIkwzHMUtrbmOb88A3A/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_36d22ecc.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_36d22ecc.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_33a4e8d1.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_33a4e8d1.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkh7206jBkyH9ssTW2cNkfEyAofU6Iv930boEOS5ULkVpEwsT23O0r4SUicMpfH80rq4BYQqgBgAYIg/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_33a4e8d1.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_33a4e8d1.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_16026deb.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_16026deb.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkh7206jBkyH9ssTW2cNkfEyWrOD2qWtJkm4pp1mARUXFrVw2dvRHNBX4Sg7ib7JbicD9pVtGs8TiaWLw/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_16026deb.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_16026deb.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_63215f07.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_63215f07.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkh7206jBkyH9ssTW2cNkfEy0Wzcg7jXZkF9H2yvR3Dkeicy7Zx6uibCPEibwcCtzJAqZeVSP6qCrhr6w/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_63215f07.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_63215f07.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_57360d66.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_57360d66.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkh7206jBkyH9ssTW2cNkfEy5yf88OZM8v64DJ2zrUkOAJJAh4kIOx559QBArXWRpOx8XNGHBKkgpQ/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_57360d66.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_57360d66.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_51d2418.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_51d2418.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkh7206jBkyH9ssTW2cNkfEyGsBgM7BFCFhaSqNlyKmYdUVJ4mhQgrkicV9JCcIyJY6fibRZ7ZDvvTYg/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_51d2418.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_51d2418.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_412e3ae7.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_412e3ae7.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkh7206jBkyH9ssTW2cNkfEyorSpGwicZ6BB1rgGeY6sEx6oX8mFJrZ3MNsxXTkT1w5RICkvibLl4qEw/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_412e3ae7.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_412e3ae7.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_eda4bb0.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_eda4bb0.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkh7206jBkyH9ssTW2cNkfEyEpGFM7QxMn6wA9TPiaPgp8YcHUnhzJ13hXP2hTcRX7ZVWTUjvFpmYTw/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_eda4bb0.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_eda4bb0.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_18f82743.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_18f82743.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkh7206jBkyH9ssTW2cNkfEyAGkfm2CHIu6tichficRIrguRD3REBxM8k0044uMCdZQv3oQWtO7vWQVA/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_18f82743.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_18f82743.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_222f880f.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_222f880f.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkh7206jBkyH9ssTW2cNkfEyK6kciaP1qBZM85vojnbPjicpftic02JmQpQaG7DvmEglDFzgmSbJR43Cg/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_222f880f.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_222f880f.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_51cb806d.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_51cb806d.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkh7206jBkyH9ssTW2cNkfEyqz5yXta44WeSVDm2YBWAYq9lH9D09mYyDjFQmeEmMk4W4iciculW9Q0g/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_51cb806d.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_51cb806d.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_5abaa54d.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_5abaa54d.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkh7206jBkyH9ssTW2cNkfEyDKKtXnHsXo6KgYgVJw74E8lNXaDGLicfjb6yKWQ695SpnJ8UqLsHT4w/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_5abaa54d.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_5abaa54d.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_6aed8104.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_6aed8104.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkjKRnUqqp3fxWqJukibDVYkicNRdt28ek495mp4NB6Vk5p4wEwAaBAib4OUfMnEYmNlibJuKnzOBC8ABw/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_6aed8104.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_6aed8104.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_5bfd1bb.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_5bfd1bb.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkjKRnUqqp3fxWqJukibDVYkic2mSGibVC1xH8pDnl9egsB7xrqGIW52Q2RER9yTRgVckM48kcibAJH18w/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_5bfd1bb.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_5bfd1bb.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_65c48715.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_65c48715.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkjKRnUqqp3fxWqJukibDVYkickN0Oia1MDQpHPJHpQXz6Pm8cuWtFXibaCK5MtMyLcQGZSKlZMCS9k7Eg/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_65c48715.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_65c48715.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_aae5c42.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_aae5c42.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkjKRnUqqp3fxWqJukibDVYkicy9AlzzzCInC5iaqJH8Z9fWa8z38IwZnK9hiad3CqQZnG1j55KUlhyd5Q/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_aae5c42.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_aae5c42.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_59a4a3b8.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_59a4a3b8.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkjKRnUqqp3fxWqJukibDVYkicccYKlF3gXoTsUhqTeicf6xTWkFWY9yvWgSZiczuGWMMu5ST4ljHdcmXQ/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_59a4a3b8.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_59a4a3b8.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_2fc1300e.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_2fc1300e.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkjKRnUqqp3fxWqJukibDVYkicoVGZDzX1iabD66UeLYyjYfMEticXVdibiaL6cthh8jrwhZg7kZhDn61kTQ/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_2fc1300e.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_2fc1300e.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_78f88db1.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_78f88db1.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkjKRnUqqp3fxWqJukibDVYkicE1bR9F7JtBmK2EZkdRtGdN3XvzJ1aeB5VkNE0M26KZXlqnS07LnVRg/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_78f88db1.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_78f88db1.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_1e798033.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_1e798033.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkjKRnUqqp3fxWqJukibDVYkiciblbIHyrj0Nbf7jn3pia4RMLgyX1VicUO4ia2lXYlllaxQ4OsgW8hzNE6w/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_1e798033.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_1e798033.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_3be0a865.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_3be0a865.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkjKRnUqqp3fxWqJukibDVYkicONbNbWLReXEzO6WFibe2Lq6D0lX9RWvrgBASBB0ibLUibRdzicPd7CkoDg/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_3be0a865.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_3be0a865.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_15de4779.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_15de4779.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkjKRnUqqp3fxWqJukibDVYkicfdLslNzmbZZ2BiceQpuIg0qXj6ibI28BWu7wE3dDaW5frdwr2ybv6yKQ/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_15de4779.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_15de4779.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_3dcffea7.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_3dcffea7.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkjKRnUqqp3fxWqJukibDVYkicn0DhW5o2QryppEVb3zUF1Clplzge1l7wMicnImhzmyqb4Kqp5ysjryA/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_3dcffea7.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_3dcffea7.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_1718e9e1.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_1718e9e1.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkjc8BvwQAYDBEBYFmzAaUjvqaolJz0nribgNX9g9CQspopgX3Cgz9iaQic9S6LwqIzynEGOHGwMUfHicA/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_1718e9e1.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_1718e9e1.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_786bbf57.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_786bbf57.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkjc8BvwQAYDBEBYFmzAaUjvoIWG6SRwch3fUrxibhrlu5CHcPnuzCdibJoQpEhe8a09rt8ib2Jmt9vSw/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_786bbf57.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_786bbf57.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_1cfbe804.gif" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_1cfbe804.gif" "https://mmbiz.qpic.cn/mmbiz_gif/Q6YwCickoKkjc8BvwQAYDBEBYFmzAaUjvgd7bGhS9jX9ye6J7QgIbeqvUM7bq1Vgl8tL2hyvEUdn5RLr0xetwxA/640?wx_fmt=gif"
  if [ -s "$WEB_ROOT/images/wechat/wx_1cfbe804.gif" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_1cfbe804.gif"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_59075037.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_59075037.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkjc8BvwQAYDBEBYFmzAaUjvPuIJAPmqI251NBTvav0YZicW0jpbx7QP5wGy2iaaicQwPCzSLibibFicIiczw/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_59075037.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_59075037.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_49a0b226.gif" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_49a0b226.gif" "https://mmbiz.qpic.cn/mmbiz_gif/Q6YwCickoKkjc8BvwQAYDBEBYFmzAaUjvibQx3mJZwNFQ4mHH0oaBqMLHS22sQamboIPbQZMbvpeLKZd3bALvNJQ/640?wx_fmt=gif"
  if [ -s "$WEB_ROOT/images/wechat/wx_49a0b226.gif" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_49a0b226.gif"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_2254b4d0.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_2254b4d0.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkjc8BvwQAYDBEBYFmzAaUjvvXllD03ZKrCIBFxTP4jdcZez686iakgUpRY5qfW86034iaQkbUKu9Mng/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_2254b4d0.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_2254b4d0.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_4e4b23a1.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_4e4b23a1.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkjc8BvwQAYDBEBYFmzAaUjvGLPPBx6ypEhM66ictocCvG0UE0RibEObZsUZtMxlgOpwia8bnsicRzz8zQ/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_4e4b23a1.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_4e4b23a1.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_67536ba9.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_67536ba9.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkjc8BvwQAYDBEBYFmzAaUjvYmnOz4BZuXy2MQ47gz6ABmunQ1uVibXsphBYPmJYn5w72bJ5LrNTOuQ/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_67536ba9.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_67536ba9.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_6b0b92a5.jpeg" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_6b0b92a5.jpeg" "https://mmbiz.qpic.cn/mmbiz_jpg/Q6YwCickoKkjc8BvwQAYDBEBYFmzAaUjv830Da4EbarFTf6Ao3nlgvpicZy2FKAh4NH4Q1WhMTHmcsdc10CoQicSw/640?wx_fmt=jpeg"
  if [ -s "$WEB_ROOT/images/wechat/wx_6b0b92a5.jpeg" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_6b0b92a5.jpeg"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ ! -s "$WEB_ROOT/images/wechat/wx_1f61b19.png" ]; then
  curl -sL --connect-timeout 15 --max-time 60 -o "$WEB_ROOT/images/wechat/wx_1f61b19.png" "https://mmbiz.qpic.cn/mmbiz_png/Q6YwCickoKkjc8BvwQAYDBEBYFmzAaUjvefS9d100CzqEoHxGqhhMjmXAzVqJSbp27Avc9Heyl4ibjb3lrgAocxQ/640?wx_fmt=png"
  if [ -s "$WEB_ROOT/images/wechat/wx_1f61b19.png" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "$WEB_ROOT/images/wechat/wx_1f61b19.png"
    FAIL=$((FAIL+1))
  fi
else
  SUCCESS=$((SUCCESS+1))
fi

echo "========================================"
echo "下载完成: 成功=$SUCCESS, 失败=$FAIL"
echo "Behance 图片: $(ls -1 $WEB_ROOT/images/behance/ | wc -l) 个文件"
echo "微信图片: $(ls -1 $WEB_ROOT/images/wechat/ | wc -l) 个文件"
echo "========================================"