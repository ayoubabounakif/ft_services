sudo openrc reboot
/etc/init.d/mariadb setup
pkill mariadb
rc-service mariadb start

# Use '%' to allow the user to connect from any IP address.
mysql -u root -e "FLUSH PRIVILEGES;"
mysql -u root -e "DROP DATABASE test;"
mysql -u root -e "CREATE DATABASE wp_database;"
mysql -u root -e "GRANT ALL PRIVILEGES ON wp_database.* TO 'wp_user'@'%' IDENTIFIED BY 'aabounak';"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%' IDENTIFIED BY 'aabounak';" 
mysql -u root -e "FLUSH PRIVILEGES;"
mysql -u root -e "EXIT;"

mariadb < /wp_database.sql # Tables for WordPress
mariadb < /pma_tables.sql # Tables for phpMyAdmin

/telegraf-1.17.0/usr/bin/telegraf --config /etc/telegraf/telegraf.conf &

tail -F /dev/null