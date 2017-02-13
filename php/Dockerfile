FROM debian
MAINTAINER Jose Maria Castillo Cotan "joseccotan10@gmail.com"

RUN apt-get -y update
RUN apt-get -y install php5-fpm php5-mysql php5-gd php5-memcached 

RUN sed -ri 's/^listen.*/listen=172.16.2.25:9000/' /etc/php5/fpm/pool.d/www.conf

 
ENTRYPOINT /usr/sbin/php5-fpm --nodaemonize

CMD ["php5-fpm"]
