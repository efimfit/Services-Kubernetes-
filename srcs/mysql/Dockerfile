FROM	alpine:3.12

RUN		apk add mariadb mariadb-client

COPY	./setup_mysql.sh   ./usr/sbin/
COPY	./my.cnf           ./etc/
COPY	./wordpresso_1.sql    ./


EXPOSE 3306
ENTRYPOINT	["setup_mysql.sh"]
