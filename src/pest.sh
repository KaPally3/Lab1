#!/bin/bash
count=1
NUMBER="№"
printf "%-10s | %-46s | %-22s | %-20s | %-20s |\n" "$NUMBER" "Имя сетевого интерфейса" "MAC адрес" "IP адрес" "Скорость соединения"
for iface in $(ls /sys/class/net/)
do
MAC=$(ifconfig $iface | grep -E 'ether' | awk '{print $2}')
IP=$(ip --brief address show $iface | awk '{print $3}' | cut -d'/' -f1)
if [  ${#MAC} -eq 0 ]; then
  MAC='                 '
fi
printf "%-8s | %-25s | %-15s | %-15s |\n" "$count" "$iface" "$MAC" "$IP"
count=$[count+1]
done
