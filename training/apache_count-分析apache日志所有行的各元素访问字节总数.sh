#date: 2016-8-17
#Author:zzk
#FUNCTION:分析apache日志所有行的各元素访问字节总数
#!/bin/sh
sum=0
i=0
while read line
do
	i=$(echo $line|awk '{print $10}')
	if expr $i + 0 &>/dev/null    #使用expr进行计算
		then
		((sum=sum+i))
	fi
done <access_2016-5-3.log
echo $sum
