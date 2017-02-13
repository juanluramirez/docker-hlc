#Imagen base a utilizar
FROM debian

#Actualización de paquetes
RUN apt-get update

#Instalación de HAProxy
RUN apt-get install -y haproxy

#Instalación de apt-utils
RUN apt-get install -y apt-utils

#Añadimos el fichero de configuración
ADD haproxy.cfg /etc/haproxy/haproxy.cfg

#Ejecución del demonio de HAProxy en FOREGROUND
CMD /usr/sbin/haproxy -f /etc/haproxy/haproxy.cfg -db

#Puertos de escucha
EXPOSE 80 8081 443 21

#Para iniciar una prueba de funcionamiento, agregamos un nuevo contenedor
#y ejecutamos el comando
#docker run -d -p <puerto libre de nuestro pc>:8081 balanceador:prueba1
