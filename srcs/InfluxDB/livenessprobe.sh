#!/bin/bash

# if [[ $(ps | grep -v "grep" | grep -c "influxd") == 0 ]]; then
#     exit 1
# elif [[ $(ps | grep -v "grep" | grep -c "telegraf") == 0 ]]; then
#     exit 1
# else
#     exit 0
# fi

sleep 20s

val=$(ps | grep -v sh)

if [[ ! "$val" =~ "influxd" ]] || [[ ! "$val" =~ "telegraf" ]]; then
    exit 1
fi
exit 0