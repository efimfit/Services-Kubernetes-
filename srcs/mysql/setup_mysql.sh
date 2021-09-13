#! /bin/sh

mkdir -p /run/mysqld/
chown -R root /run/mysqld

mysql_install_db --user=root --datadir=/var/lib/mysql/ --skip-test-db
mysqld_safe -u root --datadir="/var/lib/mysql/" & sleep 6

mysql -u root --execute="CREATE DATABASE wordpresso;"
mysql -u root wordpresso < wordpresso_1.sql
mysql -u root --execute="CREATE USER 'justin'@'%' IDENTIFIED BY 'bieber';"
mysql -u root --execute="GRANT ALL ON wordpresso.* TO 'justin'@'%' IDENTIFIED BY 'bieber' WITH GRANT OPTION;"
mysql -u root --execute="FLUSH PRIVILEGES;"

while sleep 6; do
  ps aux | grep "mysqld" | grep -q -v grep
  P1=$?
  echo -n "mysql is "
  echo -n $P1
  if [ $P1 -ne 0 ]; then
    echo "Something has died........."
    exit 1
  fi
done
