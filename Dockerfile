FROM centos:7
MAINTAINER sdlc
RUN yum install httpd -y 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip  /var/www/html/
WORKDIR /var/www/html
RUN unzip photogenic.zip
RUN cp -rf photogenic/*  .
RUN rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

