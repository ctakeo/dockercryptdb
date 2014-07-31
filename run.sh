#!/bin/bash
#
#

#mysql
#docker pull mysql:5.6
docker run --name mysql -e MYSQL_ROOT_PASSWORD=letmein -d moonnoon/mysql

#proxy
docker run --name proxy --link mysql:mysql -d proxy
