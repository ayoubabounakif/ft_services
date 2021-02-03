sudo openrc reboot

sudo pkill nginx

rc-service nginx start
/usr/sbin/sshd -D &
/telegraf-1.17.0/usr/bin/telegraf --config /etc/telegraf/telegraf.conf &

tail -F /dev/null