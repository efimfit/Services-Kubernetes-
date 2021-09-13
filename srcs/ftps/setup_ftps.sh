#!/bin/sh

adduser -D justin && echo "justin:bieber" | chpasswd
mv /usr/sbin/test.txt /home/justin/

/usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf

