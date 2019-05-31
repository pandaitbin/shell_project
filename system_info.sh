#!/bin/bash
#Author: Vicente Liu
#Date: 05/27/2018

echo -e "----------Test OS----------"
uname -v | awk -F '-' '{print $2}' | awk -F ' ' '{print $1}'
uname -v | awk -F '~' '{print $2}' | awk -F '-' '{print $1}'

echo -e "----------System Information ----------"
who | awk -F ' ' '{printe $1}'

cat /etc/hosts | grep ubuntu-desktop
cat /etc/resolv.conf | grep nameserver

#cat /proc/cpuinfo | grep -i 'model name'
lscpu | grep -i 'model name'
lscpu | grep -i 'core(s)'

cat /proc/meminfo | grep -i memtotal
cat /proc/meminfo | grep -i swaptotal

free -m | sed -n 2p | awk -F ' ' '{print $2}'

df -hT | grep sd

cat /proc/partitions | grep sd

ps aux | wc -l
ps aux | grep cpu

service --status-all | grep cpu
