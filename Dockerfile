FROM docker.io/ubuntu
RUN apt update -y
RUN apt install apache2 -y
RUN echo "Hello apache from docker!" > var/www/html/index.html
CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"] 
