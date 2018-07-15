#! /bin/bash

cd /home/log/cachelogbak/newlog/aliyun
printf '子文件数\n'
for line in $(ls |grep '2018[0-9]\{4\}')
do
cd $line
find . -type f|wc -l
cd ..
done

