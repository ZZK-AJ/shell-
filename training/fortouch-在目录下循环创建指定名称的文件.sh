#date: 2016-8-17
#Author:zzk
#FUNCTION:在目录下循环批量创建指定名称的文件
#!/bin/sh

[ ! -d /test ]&& mkdir -p /test     #[ ! -d /test ]有！为判断文件不存在，结果为真，执行创建文件
for i in `seq 10`                   #这里使用到了命令，用反引号括起来
do 
  touch /test/boy-${i}.html      #这里使用${i}，要插入自己需要的变量使用变量符号 $ 加 {i}
done

