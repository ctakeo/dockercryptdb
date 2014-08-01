#!/bin/bash
#
#remove all container

sudo docker ps -q | xargs sudo docker stop 2>/dev/null
sudo docker ps -aq | xargs sudo docker rm 2>/dev/null
