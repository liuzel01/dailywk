FROM java:8

WORKDIR /root

ARG JAR_FILE=./lng.war

COPY ${JAR_FILE} .

EXPOSE 9701

ENV TZ=Asia/Shanghai JAVA_OPTS="-Xms2048m -Xmx2048m -Xdebug -Xrunjdwp:server=y,transport=dt_socket,address=5678,suspend=n  -Dspring.profiles.active=prod -Dmqtt.clientInId=lngInServer_23 -Dmqtt.clientOutId=lngOutServer_23"

CMD sleep 5; java -jar ${JAR_FILE} $JAVA_OPTS