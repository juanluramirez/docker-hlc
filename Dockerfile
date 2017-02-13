FROM debian:jessie

# añadir los repositorios
# add our repositories 
RUN echo "deb http://http.us.debian.org/debian/ jessie main contrib non-free" > /etc/apt/sources.list
RUN echo "deb-src http://http.us.debian.org/debian/ jessie main contrib non-free" > /etc/apt/sources.list

# actualizar e instalar
# update and install 
RUN apt-get update

RUN apt-get update && apt-get install -y mysql && apt-get clean && rm -rf /var/lib/apt/lists/* 

ADD my.cnf /etc/mysql/my.conf

RUN mysql -uroot -e "create database wordpress;"

RUN mysql -uroot -e "CREATE USER 'wordpress'@'localhost' IDENTIFIED BY 'wordpress';"

RUN mysql -uroot -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'localhost';   

EXPOSE 3306
