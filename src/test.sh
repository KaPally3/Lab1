#!/bin/bash
count=1
for iface in $(ls /sys/class/net/)
do
MAC=$(ifconfig $iface | grep -E 'ether' | awk '{print $2}')
if [  ${#MAC} -eq 0 ]; then
MAC="                 "
fi
echo "$count $iface $MAC"
count=$[count+1]
done
