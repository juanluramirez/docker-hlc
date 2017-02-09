FROM debian
RUN apt-get -y update
RUN apt-get -y install php5-fpm php5-mysql php5-gd
RUN sed -e 's/127.0.0.1:80/80/' \
        -e '/allowed_clients/d' \
        -e '/catch_workers_output/s/^;//' \
        -e '/error_log/d' \
        -i /etc/php5/fpm/pool.d/www.conf
RUN mkdir -p /var/www/wordpress
EXPOSE 80  
ENTRYPOINT /usr/sbin/php5-fpm --nodaemonize
CMD ["php5-fpm"]
