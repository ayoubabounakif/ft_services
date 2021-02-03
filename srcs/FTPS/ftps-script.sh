sudo openrc reboot

vsftpd /etc/vsftpd/vsftpd.conf &
telegraf-1.17.0/usr/bin/telegraf --config /etc/telegraf/telegraf.conf &

tail -F /dev/null