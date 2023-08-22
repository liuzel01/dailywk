FROM mysql:8.0

LABEL MAINTAINER="zelin.liu@hilonggroup.com"

ENV TZ=Asia/Shanghai

RUN ln -sf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone &&\
    chmod -R 777 /var/log/

COPY ./01_schema.sql /docker-entrypoint-initdb.d

COPY ./lng-init.sql /docker-entrypoint-initdb.d

COPY ./my.cnf /etc/my.cnf
