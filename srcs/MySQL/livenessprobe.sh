#!/bin/bash

if [[ $(ps | grep -v "grep" | grep -v "sh" | grep -v "logger -t mysqld -p daemon.error" | grep -c "mysqld") == 0 ]]; then
    exit 1
elif [[ $(ps | grep -v "grep" | grep -v "sh" | grep -c "telegraf") == 0 ]]; then
    exit 1
else
    exit 0
fi

# sleep 20s

# val=$(ps | grep -v sh)

# if [[ ! "$val" =~ "mariadb" ]] || [[ ! "$val" =~ "mysqld" ]] || [[ ! "$val" =~ "telegraf" ]]; then
#     exit 1
# else
#     exit 0
# fi