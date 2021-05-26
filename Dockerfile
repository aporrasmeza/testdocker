FROM oraclelinux:7-slim

LABEL maintainer="angel.eduardo.porras.ccsmtl@ssss.gouv.qc.ca"

ENV TZ=America/Toronto

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN yum install -y java-1.6.0-openjdk tomcat

#WORKDIR /usr/local
#COPY apache-tomcat-7.0.109.tar.gz .

#RUN tar xvfz apache-tomcat-7.0.109.tar.gz
#RUN rm apache-tomcat-7.0.109.tar.gz
#RUN mv apache-tomcat-7.0.109 tomcat

#WORKDIR /usr/local/tomcat/webapps
#RUN rm -rf ROOT docs examples host-manager manager
#COPY bicn.war .

#ENV PATH "$PATH:/usr/local/tomcat/bin"

#CMD chmod +x /usr/local/tomcat/bin/catalina.sh
#CMD ["catalina.sh", "run"]

EXPOSE 8080
