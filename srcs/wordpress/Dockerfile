FROM alpine:3.12

RUN apk update
RUN apk add nginx php-fpm php7-opcache php7-gd php7-mysqli php7-zlib php7-curl php7-mbstring php7-json php7-session libc6-compat php7 php7-bcmath php7-ctype php7-fpm php7-iconv php7-intl php7-mcrypt php7-mysqlnd php7-openssl php7-pdo php7-pdo_mysql php7-pdo_pgsql php7-pdo_sqlite php7-phar php7-posix php7-soap php7-xml php7-zip

RUN mkdir -p /run/nginx
RUN mkdir -p /run/php-fpm7
RUN chmod -R 777 /run/*

RUN mkdir -p /usr/share/webapps
RUN wget http://wordpress.org/latest.tar.gz
RUN tar -xzf latest.tar.gz  -C /usr/share/webapps/
RUN mkdir -m 777 /usr/share/webapps/wordpress/wp-content/uploads
RUN chmod -R 777 /usr/share/webapps/
RUN ln -s /usr/share/webapps/wordpress /var/www/wordpress

COPY ./setup_wp.sh      /usr/sbin
COPY ./nginx_wp_conf   /etc/nginx/conf.d/default.conf
COPY ./wp-config.php    /usr/share/webapps/wordpress


EXPOSE 5050

ENTRYPOINT ["setup_wp.sh"]
