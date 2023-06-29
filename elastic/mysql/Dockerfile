FROM mysql:8.0.28

LABEL liuzelin01 @gmail.com
ENV TZ=Asia/Shanghai
ENV MYSQL_ROOT_PASSWORD=Seeds123!
ENV MYSQL_ROOT_HOST="%"

RUN ln -sf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone &&\
    chmod -R 777 /var/log/

COPY ./01_schema.sql /docker-entrypoint-initdb.d
COPY ./seeds_admin.sql /docker-entrypoint-initdb.d
COPY ./seeds_uc.sql /docker-entrypoint-initdb.d
COPY ./seeds_account.sql /docker-entrypoint-initdb.d
COPY ./seeds_wallet.sql /docker-entrypoint-initdb.d
COPY ./my.cnf /etc/my.cnf