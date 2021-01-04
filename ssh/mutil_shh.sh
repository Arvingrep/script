#!/bin/bash
#多进程对多个机器同时发指令
 
#注意下面的用户和ip是一一对应的，顺序不要搞错，额否则不能登录
#user1登录server1
server=(
    "192.168.1.1"
    "192.168.1.2"
    "192.168.1.3"
    "192.168.1.4"
)
user=(
    "test1"
    "test2"
    "test3"
    "test4"
)
 
#服务器和用户账号对应关系
tot_s=${#server[*]}
tot_u=${#user[*]}
 
if [ $tot_s -ne $tot_u ];then
    echo "服务器和用户账号数量不对应，请检查server列表和user列表"
    exit
fi
 
i=0
while [ $i -lt $tot_u ];do
    (ssh ${user[$i]}@${server[$i]} "command1;command2" & )  2>> ~/Desktop/log.txt
    #注意一定要在最后面加&符号，否则就是串行执行，不能体现并行。
    #将错误重定向到日志文件中
 
    if [ $? -ne 0 ];then
        echo "${user[$i]}@${server[$i]}执行过程中出现异常"
    fi
 
    #注意迭代器别忘了自增
    i=$[ $i + 1 ]
done