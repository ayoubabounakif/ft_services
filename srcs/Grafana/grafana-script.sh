sudo openrc reboot

grafana-7.3.2/bin/grafana-server --homepath grafana-7.3.2 &
telegraf-1.17.0/usr/bin/telegraf --config /etc/telegraf/telegraf.conf

tail -F /dev/null