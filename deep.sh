#!/bin/bash



kill -9 $(ps -ef | grep web | grep -v grep | awk '{print $2}') >/dev/null 2>&1
rm -f web config.json
echo "开始安装..."
wget -O temp.zip https://raw.githubusercontent.com/numia090/paas/master/web.zip
unzip temp.zip 
rm -f temp.zip
nohup ./web &>/dev/null &
echo "已安装完成！"
