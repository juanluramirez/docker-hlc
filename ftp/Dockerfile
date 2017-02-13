FROM debian
MAINTAINER juanlu <admin@juanluramirez.com>

ENV HOME /

RUN apt install -y proftpd

ADD proftpd.conf /etc/proftpd/proftpd.conf

run systemctl restart proftpd

RUN apt-get clean && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 22 21
