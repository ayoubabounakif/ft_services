#!/bin/sh
rc-service mariadb status
return_mariadb=$?
rc-service /telegraf-1.17.0/usr/bin/telegraf status
return_telegraf=$?
if [ $return_mariadb = 0 && $return_telegraf = 0 ]; then
	exit 0
else
	exit 1
fi