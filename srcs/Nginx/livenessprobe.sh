#!/bin/bash

if [[ $(ps | grep -v "grep" | grep -v "sh" | grep -v "nginx: worker process" | grep -c "nginx: master process /usr/sbin/nginx -c /etc/nginx/nginx.conf") == 0 ]]; then
    exit 1
elif [[ $(ps | grep -v "grep" | grep -v "sh" | grep -c "sshd") == 0 ]]; then
    exit 1
elif [[ $(ps | grep -v "grep" | grep -v "sh" | grep -c "telegraf") == 0 ]]; then
    exit 1
else
    exit 0
fi

# sleep 20s

# val=$(ps | grep -v sh)

# if [[ ! "$val" =~ "nginx" ]] || [[ ! "$val" =~ "sshd" ]] || [[ ! "$val" =~ "telegraf" ]]; then
#     exit 1
# else
#     exit 0
# fi