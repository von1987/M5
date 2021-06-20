FROM ubuntu:20.04
LABEL maintainer="Vladimir Naumov"
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y apache2
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
EXPOSE 80
COPY index.html /var/www/html/index.html
