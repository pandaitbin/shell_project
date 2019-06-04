#!/bin/bash
#Author: Vicente Liu
#Date: 05/27/2018

unset OS OS_Name OS_Version Architecture KernelRelease Loadaverage Uptime_time Uptime_days HOSTNAME Memory Swap

echo -n -e "\n=============== OS Informatican ===============\n\n"

# OS Type
OS=$(uname -o)
echo -e "Operating System Type : $OS"

#  OS Release Version and Name
OS_Name=$(cat /etc/os-release | sed -n 1p | cut -f2 -d\")

echo -n -e "OS Name : $OS_Name\n"

OS_Version=$(cat /etc/os-release | sed -n 2p | cut -f2 -d\")

echo -n -e "OS Version : $OS_Version\n"

# Architecture
Architecture=$(uname -m)
echo -n -e "Architecture : $Architecture\n"

# Kernel Release
KernelRelease=$(uname -r)
echo -n -e "Kernel Release : $KernelRelease\n"

echo -n -e "\n=============== System Informatican ===============\n\n"

# Hostname
HOSTNAME=$(hostname)
echo -n -e "Hostname : $HOSTNAME\n"

# Load Average
Loadaverage=$(top -n 1 -b | grep "load average:" | awk -F ' ' '{print $12 $13 $14}')
echo -n -e "Load Average : $Loadaverage\n"

# System Uptime
Uptime_days=$(uptime | awk -F ' ' '{print $3 $4 $5}' | cut -f1 -d,)
Uptime_time=$(uptime | awk -F ' ' '{print $3 $4 $5}' | cut -f2 -d,)
echo -n -e "System Uptime Days/(HH:MM) : $Uptime_days/$Uptime_time\n"

#RAM and SWAP Usages
Memory=$(free -h | grep Mem)

echo -n -e "Ram Usages :\n $Memory\n"

Swap=$(free -h | grep Swap)
echo -n -e "Swap Usages :\n $Swap\n"

unset OS OS_Name OS_Version Architecture KernelRelease Loadaverage Uptime_time Uptime_days HOSTNAME Memory Swap
