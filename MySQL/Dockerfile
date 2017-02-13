FROM debian
MAINTAINER adrian731gg@gmail.com

RUN apt-get update
RUN echo "mysql-server-5.5 mysql-server/root_password password string root" | d$
    && echo "mysql-server-5.5 mysql-server/root_password_again password string $
    && apt-get install -y mysql-server

CMD ["chmod 755 usuarios.sh"]
CMD ["./usuarios.sh wordpress wordpress wordpress"]
ADD my.cnf /etc/mysql/my.conf

EXPOSE 3306
