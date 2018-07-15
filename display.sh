#! /bin/bash

cd /home/log/cachelogbak/newlog/aliyun

#du命令统计目录大小
printf '大小\taliyun目录名称\n' > size123.log
du -sh *| grep '2018[0-9]\{4\}' >> size123.log

#find命令进入各子目录查找文件数量
printf '子文件数\n' > count123.log
for line in $(ls | grep '^2018[0-9]\{4\}')
do
cd $line
find . -type f|wc -l
cd ..
done >> count123.log

#paste命令以行的方式合并内容
paste size123.log count123.log | tee display.log

rm -f size123.log count123.log
mv /home/log/cachelogbak/newlog/aliyun/display.log /root/display.log
