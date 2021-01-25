FROM alpine:3.12

RUN apk update && apk add nginx && apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli php7-zlib php7-curl \
    && apk add php7-fpm php7-mcrypt php7-soap php7-session php7-openssl php7-gmp php7-pdo_odbc php7-json php7-dom php7-pdo php7-zip php7-mysqli php7-sqlite3 php7-apcu php7-pdo_pgsql php7-bcmath php7-gd php7-odbc php7-pdo_mysql php7-pdo_sqlite php7-gettext php7-xmlreader php7-xmlrpc php7-bz2 php7-iconv php7-pdo_dblib php7-curl php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip \
    && apk add sudo && apk add bash \
    && apk add openrc --no-cache && apk add libc6-compat

RUN mkdir -p /var/aabounak/

COPY nginx.conf /etc/nginx/nginx.conf
COPY phpmyadmin-script.sh /
RUN chmod +x phpmyadmin-script.sh

RUN adduser -D -g 'aabounak' aabounak
RUN chown -R aabounak:aabounak /var/aabounak
RUN chown -R aabounak:aabounak /var/lib/nginx
RUN mkdir -p /run/nginx
RUN touch /run/nginx/nginx.pid

# Process Manager
# ADD livenessprobe.sh /
# RUN apk add --no-cache supervisor
# COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

ADD https://dl.influxdata.com/telegraf/releases/telegraf-1.17.0_linux_amd64.tar.gz /
RUN tar xf telegraf-1.17.0_linux_amd64.tar.gz
RUN rm telegraf-1.17.0_linux_amd64.tar.gz

RUN mkdir -p /etc/telegraf
COPY telegraf.conf /etc/telegraf/telegraf.conf

RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-all-languages.zip
RUN unzip phpMyAdmin-5.0.4-all-languages.zip
RUN rm phpMyAdmin-5.0.4-all-languages.zip
RUN mv phpMyAdmin-5.0.4-all-languages/ /var/aabounak
COPY config.inc.php /var/aabounak/phpMyAdmin-5.0.4-all-languages
RUN chown -R aabounak:aabounak /var/aabounak/phpMyAdmin-5.0.4-all-languages
RUN mkdir -p /var/aabounak/phpMyAdmin-5.0.4-all-languages/tmp/
RUN sudo chmod 777 /var/aabounak/phpMyAdmin-5.0.4-all-languages/tmp/

EXPOSE 5000

# Open a shell
ENTRYPOINT ["sh", "/phpmyadmin-script.sh"]
