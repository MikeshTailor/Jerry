FROM ubuntu:22.04
MAINTAINER Mikesh Tailor
RUN apt-get update
RUN apt-get -y upgrade
RUN echo 'Going to install Java...'
# -y signifies yes option during an install of package
RUN apt-get install -y default-jre
RUN echo 'ready to install ssh server..'
RUN apt-get install -y openssh-server
#cmd used to allow for ssh connections on client

RUN apt-get install -y apache2
RUN apt-get install -y apache2-utils
RUN apt-get install -y nano
RUN apt-get update
RUN apt clean
EXPOSE 80
EXPOSE 22
ADD code /var/www/html
CMD ["apache2ctl", "-D", "FOREGROUND"]

#COPY Assignment_2.jar /home/Assignment_2.jar

#CMD ["export","DISPLAY=:0.0","java","-jar","/home/Assignment_2.jar"]


