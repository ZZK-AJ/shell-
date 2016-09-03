#Date: 2016-8-23
#Author:zzk
#Function:批量创建10个系统帐号zzk01-zzk10并设置密码（密码为随机8位字符串）。
#!/bin/sh
[ $UID -ne 0 ]&& echo "only root run"&&exit 1
[ -f /etc/init.d/functions ]&& . /etc/init.d/functions
isexist() {
  result=$(grep -w "^$1" /etc/passwd|wc -l)
  if [ $result -ne 0  ];then
    echo "user $1 is exist!!"
    ret 1 "create user is  "
    continue
  fi
}
ret() {
  if [ $1 -eq 0 ];then
    action "$2" /bin/true
  else
    action "$2" /bin/false
  fi
}
create() {
  for i in $(seq -w 10)
  do
    user="zzk$i"
    isexist $user
    pass=$(cat /proc/sys/kernel/random/uuid|md5sum|cut -c 1-10)
    useradd $user&&echo $pass|passwd --stdin $user &>/dev/null
    ret $? "crate user $user"
    echo "$user $pass" >> /tmp/user.list
  done
}
 
main() {
  create
}
main




