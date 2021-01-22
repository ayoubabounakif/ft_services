sudo openrc reboot

pkill nginx
rc-service nginx start

# /telegraf-1.17.0/usr/bin/telegraf --config /etc/telegraf/telegraf.conf &

sh
# tail -F /dev/null