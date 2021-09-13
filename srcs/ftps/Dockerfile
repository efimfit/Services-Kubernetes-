FROM alpine:3.12

RUN apk update && apk add openssl vsftpd

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/vsftpd.key \
     -out /etc/ssl/certs/vsftpd.crt -subj "/C=RU/ST=Tatarstan/L=KZN/O=21school/OU=terra/CN=khouten"

COPY ./vsftpd.conf      /etc/vsftpd/vsftpd.conf
COPY ./setup_ftps.sh    /usr/sbin/
COPY ./chroot.list      /etc/vsftpd/chroot.list
COPY ./test.txt         /usr/sbin/

EXPOSE 21 30000

ENTRYPOINT	["setup_ftps.sh"]
