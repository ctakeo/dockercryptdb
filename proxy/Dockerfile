#cryptdb
#
#VERSION 0.0.1

FORM debian:wheezy
MAINTAINER Fei Lee <lee.lfff@gmail.com>

RUN apt-get update -qq
RUN apt-get install ruby -qqy
RUN apt-get install git -qqy
RUN DEBIAN_FRONTEND=noninteractive apt-get install -qqy mysql-client
RUN git clone https://github.com/moonnoon/cryptdb.git /opt/cryptdb
WORKDIR /opt/cryptdb
RUN chmod +x ./scripts/install.rb .
RUN ./scripts/install.rb .
ENV EDBDIR /opt/cryptdb

ADD runproxy.sh /opt/cryptdb/runproxy.sh
RUN chmod +x /opt/cryptdb/runproxy.sh
CMD ["/opt/cryptdb/runproxy.sh"]

EXPOSE 3307
