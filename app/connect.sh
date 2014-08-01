#!/bin/bash
#
#connect to cyrptdb proxy

export HOST=$(cat /etc/hosts | grep proxy | cut -f1)

mysql -u root -pletmein -h $HOST
