# Dockerfile that modifies oraclelinux:6 to include an Apache HTTP server
FROM oraclelinux:6
MAINTAINER A N Other <another@example.com>
RUN sed -i -e '/^\[main\]/aproxy=http://proxy.example.com:80' /etc/yum.conf
RUN yum -y install httpd
RUN echo "HTTP server running on guest" > /var/www/html/index.html
EXPOSE 80
ENTRYPOINT /usr/sbin/httpd -D FOREGROUND
