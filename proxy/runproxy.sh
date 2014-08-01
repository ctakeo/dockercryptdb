#!/bin/bash
#
#startup proxy

#set ip address
#export BACKEND=$(cat /etc/hosts | grep mysql | cut -f1)
export PROXY=$(cat /etc/hosts | head -n1 | cut -f1)

./bins/proxy-bin/bin/mysql-proxy \
	--plugins=proxy --event-threads=4 \
	--max-open-files=1024 \
	--proxy-lua-script=$EDBDIR/mysqlproxy/wrapper.lua \
	--proxy-address=$PROXY:3306 \
	--proxy-backend-addresses=$MYSQL_IP:3306
