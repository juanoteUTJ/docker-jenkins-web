FROM ubuntu:latest
MAINTAINER Apasoft Training "apasoft.training@gmail.com"

# Limpiar caché, actualizar e instalar
RUN apt-get clean && \
    apt-get update && \
    apt-get install -y nginx --no-install-recommends && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ADD web /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
