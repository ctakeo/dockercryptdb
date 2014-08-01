#!/bin/bash
#
#build docker images

sudo docker build -t "moonnoon/proxy" ./proxy/
sudo docker build -t "moonnoon/mysql" ./mysql/
sudo docker build -t "moonnoon/app" ./app/
