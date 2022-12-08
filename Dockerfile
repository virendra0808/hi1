FROM ubuntu:14.04
MAINTAINER virendra
RUN apt-get update
RUN apt-get install -y nginx
RUN echo "HTTP server running on guest" > /usr/share/nginx/html/index.html
EXPOSE 80
