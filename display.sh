#! /bin/bash

cd /home/log/cachelogbak/newlog/aliyun

#du命令统计目录大小
printf '大小\taliyun目录名称\n' > size.log
du -sh *|grep '^2018[0-9]\{4\}' >> size.log

#find命令进入各子目录查找文件数量
printf '子文件数\n' > count.log
for line in $(ls |grep '^2018[0-9]\{4\}')
do
cd $line
find . -type f|wc -l
cd ..
done >> count.log

#paste命令以行的方式合并内容
paste size.log count.log | tee display.log

rm -f size.log count.log
