#mysql server for cryptdb
#
#VERSION 0.0.1

FROM debian:wheezy
MAINTAINER Fei Lee <lee.lfff@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
#set password
ENV MYSQL_ROOT_PASSWORD letmein
#
#/bin/sh: 1: Syntax error: redirection unexpected
#need /bin/bash
RUN bash -c 'debconf-set-selections <<< "mysql-server mysql-server/root_password password $MYSQL_ROOT_PASSWORD"'
RUN bash -c 'debconf-set-selections <<< "mysql-server mysql-server/root_password_again password $MYSQL_ROOT_PASSWORD"'

RUN apt-get update -qq
RUN apt-get install -qqy mysql-server-5.5 g++ make libssl-dev libntl-dev libgmp-dev git

#set edb.so
RUN git clone https://github.com/moonnoon/cryptdbedb.git /opt/cryptdb
ENV OBJDIR /opt/cryptdb/obj
WORKDIR /opt/cryptdb/udf
RUN make install

#configure mysql
RUN sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf
ADD setmysql.sh /opt/setmysql.sh
RUN /opt/setmysql.sh

CMD ["/usr/bin/mysqld_safe"]

EXPOSE 3306
