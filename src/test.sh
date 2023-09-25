collum_12="$(ip a | grep -P "^[0-9]{1,}" | awk '{print $1 $2}')"
collum_3="$(ip a |grep -E 'ether' | awk '{print $2}')"
echo "$collum_12$collum_3"
