FROM httpd:latest

LABEL maintainer="angel.eduardo.porras.ccsmtl@ssss.gouv.qc.ca"

ENV TZ=America/Toronto
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

EXPOSE 80
EXPOSE 443
