#! /bin/bash

cd /home/log/cachelogbak/newlog/aliyun
printf '大小\taliyun目录名称\n'
du -sh *|grep '^2018[0-9]\{4\}'
