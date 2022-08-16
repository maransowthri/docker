FROM ubuntu

RUN apt-get update \
    && apt-get install -y nginx

COPY index.html /var/www/html/index.nginx-debian.html

CMD [ "nginx", "-g", "daemon off;" ]