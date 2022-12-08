FROM ubuntu:14.04
MAINTAINER virendra
RUN apt-get update
RUN apt-get install -y nginx
RUN echo "HTTP server running on guest" > /usr/share/nginx/html/index.html
# ADD index.html /usr/share/nginx/html/index.html
#ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 80
