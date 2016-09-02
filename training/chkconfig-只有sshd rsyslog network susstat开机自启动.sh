#date: 2016-8-17
#Author:zzk
#FUNCTION:实现只有sshd rsyslog network susstat开机自启动
#!/bin/sh
LANG=en
for name in `chkconfig --list|grep 3:on|awk '{print $1}'`
do
  chkconfig $name off   #这是一个statement，可以直接命令，其他都要反引号
done

for name in rsync network crond sshd sysstat
do
  chkconfig $name off
done



