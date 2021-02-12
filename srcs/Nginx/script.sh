#!/bin/bash

nginx
/usr/sbin/sshd -D &
/telegraf-1.17.0/usr/bin/telegraf --config /etc/telegraf/telegraf.conf &

sleep 20s

val=`ps`

if [[ ! "$val" =~ "nginx" ]]; then
    echo nginx > aabounak.log
elif [[ ! "$val" =~ "sshd" ]]; then
    echo sshd > aabounak.log
elif [[ ! "$val" =~ "telegraf" ]]; then
    echo telegraf > aabounak.log
fi

while [ 1 -eq 1 ]; do
	val=`ps`
	if [[ ! "$val" =~ "nginx" ]] || [[ ! "$val" =~ "sshd" ]] || [[ ! "$val" =~ "telegraf" ]]; then
            break ;
    fi
done

# sudo openrc reboot

# sudo pkill nginx

# rc-service nginx start
# /usr/sbin/sshd -D &
# /telegraf-1.17.0/usr/bin/telegraf --config /etc/telegraf/telegraf.conf &

# sleep 10s

# while [[ true ]]; do

#     val=$(ps | grep -v sh)
#     if [[ ! "$val" =~ "nginx" ]] || [[ ! "$val" =~ "sshd" ]] || [[ ! "$val" =~ "telegraf" ]]; then
#         break ;
#     fi
# done