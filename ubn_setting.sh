#!/bin/bash

rawtemp=`cat /sys/class/thermal/thermal_zone0/temp`
temp=`scale=2; $rawtemp/1000 | bc`
mem=`free -m | grep 'Mem:'`
memtl=`$mem | awk '{print $2}'`
memu=`$mem | awk '{print $3}'`
permem=`echo 'scale=2; $memu/$memtl * 100' | bc`

echo "
Temperature: $temp
Memory     : $permem
"
