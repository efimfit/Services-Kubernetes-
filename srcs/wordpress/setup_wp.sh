#!/bin/sh

/usr/sbin/nginx
/usr/sbin/php-fpm7

while sleep 6; do
  ps aux | grep "nginx: master" | grep -q -v grep
  P1=$?
  echo -n "nginx is "
  echo -n $P1
  ps aux | grep "php-fpm: master" | grep -q -v grep
  P2=$?
  echo -n "php is "
  echo -n $P2
  if [ $P1 -ne 0 -o $P2 -ne 0 ]; then
    echo "Something has died........."
    exit 1
  fi
done

