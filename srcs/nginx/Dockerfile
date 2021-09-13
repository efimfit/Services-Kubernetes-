FROM alpine:3.12

RUN apk update && apk add nginx openssl
RUN mkdir -p /run/nginx && mkdir -p /var/www/VALERA

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key \
    -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=RU/ST=Tatarstan/L=KZN/O=21school/OU=terra/CN=khouten"

COPY ./setup_nginx.sh   /usr/sbin/
COPY ./nginx_conf       /etc/nginx/conf.d/default.conf
COPY ./index.html       /var/www/VALERA/index.html

EXPOSE 80 443
ENTRYPOINT ["setup_nginx.sh"]