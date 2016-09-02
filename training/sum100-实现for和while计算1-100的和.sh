#date: 2016-8-17
#Author:zzk
#FUNCTION:实现for和while计算1-100的和
#!/bin/sh
for((i=0;i<=100;i++))
do 
    ((j=j+i))
done
echo $j

i=0
while ((i<=100))
do
  ((a=a+i))
  ((i=i+1))
done
echo $a

