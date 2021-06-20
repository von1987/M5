FROM centos
LABEL maintainer="Vladimir Naumov"
RUN dnf update -y
RUN dnf install httpd -y
ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
COPY index.html /var/www/html/
