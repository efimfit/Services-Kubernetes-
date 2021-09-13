FROM alpine:3.12

RUN apk update && apk add nginx php7 php7-fpm php7-opcache php7-gd php7-mysqli php7-zlib php7-curl php7-mbstring php7-json php7-session php7-bz2 php-zip php7-iconv php7-xml
RUN mkdir -p /usr/share/webapps/phpmyadmin/
RUN chmod -R 777 /usr/share/webapps/phpmyadmin
RUN ln -s /usr/share/webapps/phpmyadmin/ /var/www/phpmyadmin
RUN wget http://files.directadmin.com/services/all/phpMyAdmin/phpMyAdmin-5.1.0-all-languages.tar.gz
RUN tar -xf phpMyAdmin-5.1.0-all-languages.tar.gz --strip-components=1 -C /usr/share/webapps/phpmyadmin/  && rm -rf phpMyAdmin-5.1.0-all-languages.tar.gz

COPY ./setup_php.sh                                /usr/sbin/
COPY ./nginx_php_conf                              /etc/nginx/conf.d/default.conf
COPY ./phpmyadmin_config.inc.php                   /usr/share/webapps/phpmyadmin/config.inc.php

RUN mkdir -p /run/nginx
RUN mkdir -p /run/php-fpm7
RUN chmod -R 777 /run/*

EXPOSE 5000

ENTRYPOINT ["setup_php.sh"]
