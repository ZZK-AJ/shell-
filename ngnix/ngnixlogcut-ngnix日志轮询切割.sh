#Date: 2016-9-7
#Author:zzk
#Function:ngnix日志轮询切割
#!/bin/sh
Datef=`date +%Y%m%d`  #执行date命令，+%Y%m%d 指定日期格式
Basedir="/applicaton/ngnix"
ngnixlogdir="/$Basedir/logs"
logname="access_www"
[ -d $ngnixlogdir ] && cd $ngnixlogdir||exit 1  #判断日志目录是否存在，存在就cd到对应目录
[ -f ${logname}.log ]||exit 1                   #判断日志是否存在
/bin/mv ${logname}.log ${Datef}_${logname}.log  #只需要使用mv命令，更改文件名，然后就重启ngnix，会自动生成默认文件名的日志文件
$Basedir/sbin/ngnix -s reload 


