#!/bin/bash



kill -9 $(ps -ef | grep web | grep -v grep | awk '{print $2}') >/dev/null 2>&1
rm -f web config.json
yellow "开始安装..."
wget -O temp.zip https://raw.githubusercontent.com/Jimyarkw/paas/master/web.zip
unzip temp.zip 

    nohup ./web &>/dev/null &
    green "已安装完成！"
