#!/bin/bash
#Author: Vicente Liu
#Date: 05/27/2018

unset OS OS_Name OS_Version Architecture KernelRelease Loadaverage Uptime

echo -n -e "=============== OS Informatican ===============\n"

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

echo -n -e "=============== System Informatican ===============\n"

# Hostname
HOSTNAME=$(hostname)
echo -n -e "Hostname : $HOSTNAME\n"

# Load Average
Loadaverage=$(top -n 1 -b | grep "load average:" | awk '{print $10 $11 $12}')
echo -n -e "Load Average : $Loadaverage\n"

# System Uptime
Uptime=$(uptime | awk '{print $3,$4}' | cut -f1 -d,)
echo -n -e "System Uptime Days/(HH:MM) : $Uptime\n"

unset OS OS_Name OS_Version Architecture KernelRelease Loadaverage Uptime
