#!/bin/sh

if [[ $(ps | grep -v "grep" | grep -c "grafana") == 0 ]]; then
    exit 1
elif [[ $(ps | grep -v "grep" | grep -c "telegraf") == 0 ]]; then
    exit 1
else
    exit 0
fi