sudo openrc reboot

influxd -config /etc/influxdb/influxdb.conf &
telegraf-1.17.0/usr/bin/telegraf --config /etc/telegraf/telegraf.conf

tail -F /dev/null