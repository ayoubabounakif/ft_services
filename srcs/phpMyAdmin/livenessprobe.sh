#!/bin/bash

if [[ $(ps | grep -v "grep" | grep -c "nginx") == 0 ]]; then
    exit 1
elif [[ $(ps | grep -v "grep" | grep -c "php-fpm7") == 0 ]]; then
    exit 1
elif [[ $(ps | grep -v "grep" | grep -c "telegraf") == 0 ]]; then
    exit 1
else
    exit 0
fi

# sleep 20s

# val=$(ps | grep -v sh)

# if [[ ! "$val" =~ "nginx" ]] || [[ ! "$val" =~ "php-fpm7" ]] || [[ ! "$val" =~ "telegraf" ]]; then
#     exit 1
# else
#     exit 0
# fi