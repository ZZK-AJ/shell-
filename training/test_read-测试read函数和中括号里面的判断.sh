#Date: 2016-8-30
#Author:zzk
#Function:测试read函数和中括号里面的判断，要求必须yn
#!/bin/sh
read -p "Please what you want and wait for the result!" yn
if [ "$yn" == "Y" ] || [ "$yn" == "y" ];then
	echo "ok ,you are right"
	exit 0
elif [ "$yn" == "N" ] || [ "$yn" == "n" ];then
	echo "oh,no"
	exit 0
else
	echo "what the fuck are you input~"
fi
