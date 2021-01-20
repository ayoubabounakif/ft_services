#!/bin/sh
rc-service nginx status
return_nginx=$?
rc-service /telegraf-1.17.0/usr/bin/telegraf status
return_telegraf=$?
if [ $return_nginx = 0 && $return_telegraf = 0 ]; then
	exit 0
else
	exit 1
fi