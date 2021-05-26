FROM httpd:latest

LABEL maintainer="angel.eduardo.porras.ccsmtl@ssss.gouv.qc.ca"

ENV TZ=America/Toronto
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

WORKDIR /usr/local/apache2/conf
COPY httpd.conf .

EXPOSE 8080
