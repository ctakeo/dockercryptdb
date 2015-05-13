#mysql client
#
#VERSION 0.0.1

FROM moonnoon/base
MAINTAINER Fei Lee <lee.lfff@gmail.com>

RUN apt-get update -qq
RUN DEBIAN_FRONTEND=noninteractive apt-get install -qqy mysql-client

ADD ./connect.sh /opt/
WORKDIR /opt/
RUN chmod +x connect.sh
