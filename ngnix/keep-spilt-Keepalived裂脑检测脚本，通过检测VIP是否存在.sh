#Date: 2016-9-13
#Author:zzk
#Function:Keepalived裂脑检测脚本，通过检测VIP是否存在
#!/bin/sh
lb01_vip=10.0.0.12
lb01_ip=10.0.0.7
while true
do
ping -c 2 -w 3 $lb01_ip &>/dev/null
  if  [ $? -eq 0 -a `ip add|grep "$lb01_vip"|wc -l` -eq 1 ]
    then
      echo "he is split brain."
  else
      echo "he is ol"
fi
sleep 5
done


