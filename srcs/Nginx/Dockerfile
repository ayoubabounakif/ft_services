FROM alpine:3.12

RUN apk update && apk add nginx && apk add openssl && apk add openssh \
    && apk add sudo && apk add bash \
    && apk add openrc && apk add libc6-compat 

RUN adduser -D -g 'www' www
RUN mkdir -p /www
RUN chown -R www:www /var/lib/nginx
RUN chown -R www:www /www
RUN mkdir -p /run/nginx
RUN touch /run/nginx/nginx.pid  

ADD https://dl.influxdata.com/telegraf/releases/telegraf-1.17.0_linux_amd64.tar.gz /
RUN tar xf telegraf-1.17.0_linux_amd64.tar.gz
RUN rm telegraf-1.17.0_linux_amd64.tar.gz

RUN mkdir -p /etc/telegraf
COPY telegraf.conf /etc/telegraf/telegraf.conf

COPY default.conf /etc/nginx/conf.d/default.conf
COPY index.html /www/index.html

# Process Manager
COPY livenessprobe.sh /
RUN chmod +x /livenessprobe.sh

COPY nginx-script.sh /
RUN chmod +x nginx-script.sh

RUN openssl req -x509 -nodes -days 365 -subj "/C=MA/ST=BG/O=aabounak, Inc./CN=localhost" -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt

# /usr/sbin/sshd 
# ssh aabounak_ssh@$(minikube ip)

# SSH
RUN adduser aabounak_ssh -D && echo "aabounak_ssh:aabounak" | chpasswd
RUN ssh-keygen -f /etc/ssh/ssh_host_rsa_key -N '' -t rsa
RUN ssh-keygen -f /etc/ssh/ssh_host_dsa_key -N '' -t dsa


RUN sudo openrc reboot

EXPOSE 80
EXPOSE 443
EXPOSE 22

ENTRYPOINT ["sh", "/nginx-script.sh"]