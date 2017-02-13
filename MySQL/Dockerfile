FROM debian
MAINTAINER adrian731gg@gmail.com

RUN apt-get update
RUN echo "mysql-server-5.5 mysql-server/root_password password string root" | debconf-set-selections \
    && echo "mysql-server-5.5 mysql-server/root_password_again password string root" | debconf-set-selections \
    && apt-get install -y mysql-server

CMD ["chmod 755 usuarios.sh"]
ADD my.cnf /etc/mysql/my.conf
ADD usuarios.sh /etc/mysql/usuarios.sh
CMD ["/etc/mysql/usuarios.sh wordpress wordpress wordpress"]

EXPOSE 3306
