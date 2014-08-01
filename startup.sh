#!/bin/bash
#
#

#mysql
MYSQL_ID=$(sudo docker run -d --name mysql -e MYSQL_ROOT_PASSWORD=letmein moonnoon/mysql)
MYSQL_IP=$(sudo docker inspect --format='{{.NetworkSettings.IPAddress}}' $MYSQL_ID)

#proxy
sudo docker run -d --name proxy --link mysql:mysql -e MYSQL_IP=$MYSQL_IP moonnoon/proxy

#application 
sudo docker run --name app --link proxy:proxy -it moonnoon/app /bin/bash
