#cryptdb
#
#VERSION 0.0.1

FROM debian:wheezy
MAINTAINER Fei Lee <lee.lfff@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -qq
RUN apt-get install ruby -qqy
RUN apt-get install git -qqy
RUN git clone https://github.com/moonnoon/cryptdbx.git /opt/cryptdb
WORKDIR /opt/cryptdb
#sudo 
#yes
RUN chmod +x ./scripts/install.rb .
#
#edb.so
#install -m 644 -g mysql -o mysql obj/udf/edb.so /usr/lib/mysql/plugin
RUN ./scripts/install.rb .
ENV EDBDIR /opt/cryptdb

ADD runproxy.sh /opt/cryptdb/runproxy.sh
RUN chmod +x /opt/cryptdb/runproxy.sh
CMD ["/opt/cryptdb/runproxy.sh"]

EXPOSE 3307
