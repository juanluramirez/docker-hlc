#############################################################
# Archivo Dockerfile para ejecutar contenedores en Memcached
# Basado en una imagen de Debian
#############################################################

# Establece la imagen de base a utilizar para Debian
FROM debian

# Establece el autor (maintainer) del archivo (tu nombre - el autor del archivo)
MAINTAINER FranHidalgo

# Actualización de la lista de fuentes del repositorio de aplicaciones por defecto y actualizacion de paquetes
RUN apt-get update

# Instalar Memcached
RUN apt-get install -y memcached

# Puerto para exponer (por defecto: 11211)
EXPOSE 11211

# Comando Memcached por defecto con algunos argumentos
CMD ["-u", "root", "-m", "128"]

# Establece el usuario para ejecutar el demonio Memcached
USER root

# Establece el punto de entrada para los binarios de Memcached
ENTRYPOINT memcached
