FROM thingsboard/openjdk11

WORKDIR /root

ARG JAR_FILE=./hilongit-3.3.3-boot.jar

COPY ${JAR_FILE} .

EXPOSE 8080 1883 7070

RUN echo 'networkaddress.cache.ttl=60' >> /etc/java-11-openjdk/security/java.security

CMD ["java","-jar","hilongit-3.3.3-boot.jar","-Dloader.main=org.hlframework.iot.server.HlServerApplication","-Dspring.jpa.hibernate.ddl-auto=none","org.springframework.boot.loader.PropertiesLauncher"]
