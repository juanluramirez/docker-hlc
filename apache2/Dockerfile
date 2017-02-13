FROM debian
MAINTAINER Josué Álvarez Moreno "josue@josuealvarezmoreno.com"

RUN sed -i 's/main/main non-free/g' /etc/apt/sources.list
RUN apt-get update && apt-get install -y apache2 libapache2-mod-fastcgi && apt-get clean && rm -rf /var/lib/apt/lists/*
ADD ["php5-fpm.conf","/etc/apache2/conf-available/php5-fpm.conf"]
RUN a2enmod fastcgi actions
RUN a2enconf php5-fpm

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

EXPOSE 80
ADD ["html/*","/var/www/html/"]
ADD ["test-site.conf","/etc/apache2/sites-available/"]

RUN a2enmod proxy proxy_fcgi
RUN a2dissite 000-default
RUN a2ensite test-site 

ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

