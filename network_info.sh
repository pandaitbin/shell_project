#!/bin/bash
#Author: Vicente Liu
#Date: 05/27/2018

echo -e "----------Test OS----------\n"

v_name=`uname -v | awk -F '-' '{print $2}' | awk -F ' ' '{print $1}'`
v_number=`uname -v | awk -F '~' '{print $2}' | awk -F '-' '{print $1}'`

echo -e "Linux Version: $v_name $v_number\n"

echo -e "----------Network Information----------\n"

#Get IP address
echo -e "Get IP address with \"ip a\"\n"
ip_addr1=`ip a | grep ens32 | grep inet | awk -F ' ' '{print $2}' | awk -F '/' '{print $1}'`
echo -e "IP Address: $ip_addr1\n"

echo -e "Get IP address with \"ifconfig\"\n"
ip_addr2=`ifconfig ens32 | sed -n 2p | awk -F ' ' '{print $2}'`
echo -e "IP Address: $ip_addr2\n"

#Get Mac address
echo -e "Get MAC address with \"ip a\"\n"
mac_addr1=`ip a | grep -A 3 'ens32' | grep link/ether | awk -F ' ' '{print $2}'`
echo -e "MAC Address: $mac_addr1\n"

echo -e "Get MAC address with \"ifconfig\"\n"
mac_addr2=`ifconfig ens32 | grep ether | awk -F ' ' '{print $2}'`
echo -e "MAC Address: $mac_addr2\n"

#Get Gateway
Gway=`ip r | sed -n 1p | awk -F ' ' '{print $3}'`
echo -e "Gateway: $Gway\n"
