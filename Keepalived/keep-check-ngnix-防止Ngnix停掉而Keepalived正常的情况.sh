#Date: 2016-9-15
#Author:zzk
#Function:防止Ngnix停掉而Keepalived正常的情况
#!/bin/sh
#!/bin/sh
while true
do
if [ `netstat -lntup|grep ngnix|wc -l` -ne 1 ];then
/etc/init.d/keepalived stop
fi
sleep 5
done

