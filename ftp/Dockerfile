FROM debian
MAINTAINER juanlu <admin@juanluramirez.com>

ENV HOME /

RUN apt-get update
RUN apt-get install -y proftpd

ADD proftpd.conf /etc/proftpd/proftpd.conf

RUN service proftpd restart

RUN apt-get clean && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 22 21
