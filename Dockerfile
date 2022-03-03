# Pull base image 
From tomcat:8-jre8 

MAINTAINER "kloversolutios@outlook.com" 

RUN cd webapps.dist && cp -R * ../webapps
COPY ./webapp/target/devops.war /usr/local/tomcat/webapps

CMD ["catalina.sh", "run"]

