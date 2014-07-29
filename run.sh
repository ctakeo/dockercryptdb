#!/bin/bash
#
#

#mysql
#docker pull mysql:5.6
docker run --name mysql -e MYSQL_ROOT_PASSWORD=letmein -p 127.0.0.1:9958:3306 -d mysql

#proxy
docker run --name proxy --link mysql:mysql -p 127.0.0.1:9959:3307 -d proxy
