#!/bin/sh

if [[ $(ps | grep -v "grep" | grep -c "mariadb") == 0 ]]; then
    exit 1
elif [[ $(ps | grep -v "grep" | grep -c "mysqld") == 0 ]]; then
    exit 1
elif [[ $(ps | grep -v "grep" | grep -c "telegraf") == 0 ]]; then
    exit 1
else
    exit 0
fi