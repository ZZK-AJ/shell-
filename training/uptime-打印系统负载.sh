#date: 2016-8-17
#Author:zzk
#MAIL:
#FUNCTION:每隔2s打印系统负载
#VERSION:1
#
#[root@zzk ~]# uptime
#16:31:14 up 14 days, 22:25,  3 users,  load average: 0.00, 0.00, 0.00
#!/bin/sh
while true
  do 
    uptime >>/var/log/uptime.log
    sleep 2
done


