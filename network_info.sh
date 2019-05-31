#!/bin/bash
#Author: Vicente Liu
#Date: 05/27/2018

echo -e "----------Test OS----------"
uname -v | awk -F '-' '{print $2}' | awk -F ' ' '{print $1}'
uname -v | awk -F '~' '{print $2}' | awk -F '-' '{print $1}'

echo -e "----------Network Information----------"

#Get IP address with "ip a"
ip a | grep ens32 | grep inet | awk -F ' ' '{print $2}' | awk -F '/' '{print $1}'

#Get IP address with "ifconfig"
ifconfig ens32 | sed -n 2p | awk -F ' ' '{print $2}'

#Get Mac address
ip a | grep -A 3 'ens32' | grep link/ether | awk -F ' ' '{print $2}'

ifconfig ens32 | grep ether | awk -F ' ' '{print $2}'

#Get Gateway
ip r | sed -n 1p | awk -F ' ' '{print $3}'
