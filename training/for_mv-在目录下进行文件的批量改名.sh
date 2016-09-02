#date: 2016-8-17
#Author:zzk
#FUNCTION:在目录下进行文件的批量改名
#改名的思路，把文件列出来，交给一个变量，然后循环用sed进行改名,使用mv最后改名
#!/bin/sh
cd /boy
for f in `ls *.html`
do
	#mv $f `echo $f|sed 's/boy/linux/g'|sed 's/html/HTML/g'`
	mv $f `echo $f|sed 's/boy\(.*\)/linux\1.HTML/g'`
done

