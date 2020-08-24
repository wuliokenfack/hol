# Pull base image 
From tomcat:8-jre8 

# Maintainer: Wulio
MAINTAINER "kserge2001@yahoo.fr" 
COPY /webapp/target/holiday.war /usr/local/tomcat/webapps
