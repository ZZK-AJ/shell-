#Date: 2016-9-7
#Author:zzk
#Function:ngnix日志轮询切割
#!/bin/sh
Datef=`date +%Y%m%d`  #执行date命令，+%Y%m%d 指定日期格式
Basedir="/applicaton/ngnix"
ngnixlogdir="/$Basedir/logs"
logname="access_www"
[ -d $ngnixlogdir ] && cd $ngnixlogdir||exit 1
[ -f ${logname}.log ]||exit 1
/bin/mv ${logname}.log ${Datef}_${logname}.log
$Basedir/sbin/ngnix -s reload


