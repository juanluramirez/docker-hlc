FROM debian
RUN apt-get -y update
RUN apt-get -y install php5-fpm php5-mysql php5-gd
RUN sed -ri 's/^listen.*/listen=10.0.0.1:9000/' /etc/php5/fpm/pool.d/

RUN mkdir -p /var/www/wordpress
EXPOSE 9000  
ENTRYPOINT /usr/sbin/php5-fpm --nodaemonize

CMD ["php5-fpm"]


