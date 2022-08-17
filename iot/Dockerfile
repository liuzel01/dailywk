FROM thingsboard/openjdk11

RUN echo 'networkaddress.cache.ttl=60' >> /etc/java-11-openjdk/security/java.security

ARG JAR_FILE=./target/hilongit-*-boot.jar
ARG DATA_DIR=./target/data
ARG START_SCRIPT=./target/startup.sh

COPY ${JAR_FILE} app.jar
COPY ${START_SCRIPT} .
ADD ${DATA_DIR} data/

CMD ["bash","-c","/startup.sh"]
# TODO 需要 -v 指定 java-lib 目录 | 要不就把pom.xml文件里面的 排除jar的plugin注释
# CMD ["java","-jar","app.jar","-Dloader.main=org.hlframework.iot.server.HlServerApplication","-Dspring.jpa.hibernate.ddl-auto=none","org.springframework.boot.loader.PropertiesLauncher"]
