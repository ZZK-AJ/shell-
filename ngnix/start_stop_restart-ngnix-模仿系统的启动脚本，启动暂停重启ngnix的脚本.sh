#date: 2016-8-20
#Author:zzk
#FUNCTION:模仿系统的启动脚本，写的启动暂停重启ngnix的脚本，使用functions，有屏幕输出
#!/bin/sh
. /etc/init.d/functions                #用于屏幕显示输出
start_nginx=/application/nginx/sbin/nginx
USAGE(){
  echo "USAGE $0 {start|stop|restart}"
  exit 1
}
if [ $# -ne 1 ]
  then
    USAGE
fi

if [ "$1" == "start" ]
  then
    $start_nginx
    action "start nginx" /bin/true
elif [ "$1" == "stop" ]
  then
    killall nginx
    action "stop nginx" /bin/true
elif [ "$1" == "restart" ]
  then
    pkill nginx
    sleep 2
    $start "rstart nginx" /bin/true
else
    USAGE
fi
