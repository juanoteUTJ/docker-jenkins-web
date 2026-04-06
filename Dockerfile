FROM ubuntu
MAINTAINER Apasoft Training "apasoft.training@gmail.com"
RUN apt update -y
RUN apt install -y nginx
ADD web /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 80
