FROM mysql:8.0

LABEL MAINTAINER="zelin.liu"

ENV TZ=Asia/Shanghai

RUN ln -sf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone &&\
    chmod -R 777 /var/log/

COPY ./01_schema.sql /docker-entrypoint-initdb.d

COPY ./02_piping.sql /docker-entrypoint-initdb.d
