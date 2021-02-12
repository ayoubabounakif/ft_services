FROM alpine:3.12

RUN apk update && apk add mariadb mariadb-common mariadb-client \
    && apk add sudo && apk add bash \
    && apk add openrc --no-cache && apk add libc6-compat

ADD https://dl.influxdata.com/telegraf/releases/telegraf-1.17.0_linux_amd64.tar.gz /
RUN tar xf telegraf-1.17.0_linux_amd64.tar.gz
RUN rm telegraf-1.17.0_linux_amd64.tar.gz

RUN mkdir -p /etc/telegraf
COPY telegraf.conf /etc/telegraf/telegraf.conf

COPY mariadb-server.cnf /etc/my.cnf.d
COPY wp_database.sql /
COPY pma_tables.sql /

# Process Manager
# COPY livenessprobe.sh /
# RUN sudo chmod +x /livenessprobe.sh

COPY script.sh /
RUN sudo chmod +x /script.sh

EXPOSE 3306

ENTRYPOINT ["bash", "/script.sh"] 