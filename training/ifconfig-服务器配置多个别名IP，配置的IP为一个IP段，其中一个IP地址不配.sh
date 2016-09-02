#date: 2016-8-17
#Author:zzk
#FUNCTION:shell脚本给服务器配置多个别名IP，配置的IP为一个IP段，其中一个IP地址10不配,10.0.2.1-16
#!/bin/sh
for ((i=1;i<=16;i++))
do
	if [[ $i -eq 10 ]]; then
		continue
	fi
	ifconfig eth0:$i 10.0.2.$i/24 up
done


