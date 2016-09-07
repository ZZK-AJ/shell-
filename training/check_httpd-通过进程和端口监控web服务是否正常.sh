#Date: 2016-8-28
#Author:zzk
#Function:监控web服务是否正常，不低于3种监控策略。
#思路
#1 监控的三种方式
#     通过进程名监控 ps -ef|grep name
#     通过端口监控 netstat -lntup|grep port/lsof -i:80
#     通过链接信息上的进程名 netstat -lntup|grep port
#2 等待一分钟
#3 后台执行 nohup
#!/bin/sh
[ -f /etc/init.d/functions ] && . /etc/init.d/functions
check_httpd(){
count=`ps -ef|grep nginx|grep -v grep|wc -l`
      if [ "$count" -ne 0 ]
      then
        action "nginx is ok" /bin/true
      else
        action "nginx is dead" /bin/false
      fi
    }
    check_httpd_port(){
      count=`netstat -lntup|grep 8080|wc -l`
      if [ "$count" -ne 0 ]
      then
        action "nginx is ok" /bin/true
      else
        action "nginx is dead" /bin/false
      fi
    }
check_httpd
check_httpd_port




