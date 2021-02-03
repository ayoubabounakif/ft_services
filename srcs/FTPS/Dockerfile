FROM alpine:3.12

RUN apk update && apk add vsftpd && apk add openssl \
    && apk add sudo && apk add bash \
    && apk add openrc && apk add libc6-compat

# Process Manager
# RUN apk add --no-cache supervisor
# COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

ADD https://dl.influxdata.com/telegraf/releases/telegraf-1.17.0_linux_amd64.tar.gz /
RUN tar xf telegraf-1.17.0_linux_amd64.tar.gz
RUN rm telegraf-1.17.0_linux_amd64.tar.gz

RUN mkdir -p /etc/telegraf
COPY telegraf.conf /etc/telegraf/telegraf.conf

## FTPS Conf
RUN adduser admin -D && echo "admin:aabounak" | chpasswd

COPY vsftpd.conf /etc/vsftpd/
COPY vsftpd.pem /etc/ssl/

# Process Manager
COPY livenessprobe.sh /
RUN sudo chmod +x /livenessprobe.sh

COPY ftps-script.sh /
RUN sudo chmod +x /ftps-script.sh

EXPOSE 21

ENTRYPOINT ["sh", "/ftps-script.sh"]