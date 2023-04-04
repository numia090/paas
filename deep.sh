#!/bin/bash



kill -9 $(ps -ef | grep web | grep -v grep | awk '{print $2}') >/dev/null 2>&1
rm -f web config.json
yellow "开始安装..."
wget -O temp.zip https://raw.githubusercontent.com/johnyterry/xry-linux64/main/Xry-linux-64.zip
unzip temp.zip 

    nohup ./web.js &>/dev/null &
    green "已安装完成！"
