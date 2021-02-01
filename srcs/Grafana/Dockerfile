FROM alpine:3.12

RUN apk update && apk add sudo && apk add bash \
    && apk add openrc && apk add libc6-compat

# Process Manager
# RUN apk add --no-cache supervisor
# COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

ADD https://dl.grafana.com/oss/release/grafana-7.3.2.linux-amd64.tar.gz /
RUN tar -zxvf grafana-7.3.2.linux-amd64.tar.gz
RUN rm grafana-7.3.2.linux-amd64.tar.gz

ADD https://dl.influxdata.com/telegraf/releases/telegraf-1.17.0_linux_amd64.tar.gz /
RUN tar xf telegraf-1.17.0_linux_amd64.tar.gz
RUN rm telegraf-1.17.0_linux_amd64.tar.gz

RUN mkdir -p /etc/telegraf
COPY telegraf.conf /etc/telegraf/telegraf.conf

# Process Manager
COPY livenessprobe.sh /
RUN chmod +x /livenessprobe.sh

COPY grafana-script.sh /
RUN sudo chmod +x /grafana-script.sh

COPY grafana.db /grafana-7.3.2/data/

EXPOSE 3000

ENTRYPOINT ["sh", "/grafana-script.sh"]