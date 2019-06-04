#!/bin/bash
#Author: Vicente Liu
#Date: 05/27/2018

echo -e "----------Test OS----------\n"

v_name=`uname -v | awk -F '-' '{print $2}' | awk -F ' ' '{print $1}'`
v_number=`uname -v | awk -F '~' '{print $2}' | awk -F '-' '{print $1}'`

echo -e "Linux Version: $v_name $v_number\n"

echo -e "----------User Information ----------\n"

t_date=`date`

echo "Date: $t_date"

#username=`who | awk -F ' ' '{printe $1}'`
#echo "Username: $username" 

HOSTNAME=`hostname`
echo "Hostname: $HOSTNAME"

UPTIME=`uptime`
echo "Uptime: $UPTIME"

#w
User01=`w | grep pts | sed -n 1p | awk -F ' ' '{print $1}'`
User02=`w | grep pts | sed -n 2p | awk -F ' ' '{print $1}'`
echo "Username: $User01"
