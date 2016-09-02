#date: 2016-8-17
#Author:zzk
#FUNCTION:读取文件的三种方法

#!/bin/sh
#1
cat a.log|while read line
do
	echo $line
	exit
done
#2
while read line
do
	echo $line
	exit
done<a.log
#3
exec <a.log
while read line
do
	echo $line
	exit
done







