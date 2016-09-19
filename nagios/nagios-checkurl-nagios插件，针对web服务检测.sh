#Date: 2016-9-10
#Author:zzk
#Function:nagios插件，针对web服务检测
#!/bin/sh
PROGNAME=`basename $0`     #取脚本名
PROGPATH=`dirname $0`		#取脚本路径
usage()	{
	echo "USAGR: /bin/sh $PROGNAME url"		#打印帮助
	exit 1
}
[ $# -ne 1 ]&&usage		#参数不为1就打印帮助
wget -T 10 --spider $1 >/dev/null 2>&1		#wget进行检测
if [ $? -eq 0 ];then		#返回值等于0，就说明没有问题
	echo "URL $1 IS OK"
	exit 0
else
	echo "URL $1 IS WARNNING"
	exit 2
fi


