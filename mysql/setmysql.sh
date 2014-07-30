#/bin/bash

#if [ ! -f /var/lib/mysql/ibdata1 ]; then
#
#    mysql_install_db

    /usr/bin/mysqld_safe &
    sleep 3s

echo "GRANT ALL ON *.* TO root@'%' IDENTIFIED BY 'letmein' WITH GRANT OPTION; FLUSH PRIVILEGES" | mysql -uroot -pletmein

    killall mysqld
    sleep 3s
#fi
