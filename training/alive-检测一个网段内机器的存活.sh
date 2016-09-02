#date: 2016-8-17
#Author:zzk
#FUNCTION:检测一个网段内机器的存活
#!/bin/sh
for n in `seq 254`
do
	ping -c1 10.0.0.$n >/dev/null 2>&1
	if [ $? -eq 0 ];then
		echo "10.0.0.$n is up" >>/tmp/uplist.log
	else
		echo "10.0.0.$n is down" >>/tmp/downlist.log
	fi
done


