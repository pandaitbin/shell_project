#!/bin/bash
#Author: Vicente Liu
#Date: 05/27/2018

echo -e "----------Test OS----------"
uname -v | awk -F '-' '{print $2}' | awk -F ' ' '{print $1}'
uname -v | awk -F '~' '{print $2}' | awk -F '-' '{print $1}'

echo -e "----------User Information ----------"
date
#who | awk -F ' ' '{printe $1}'

hostname

w
