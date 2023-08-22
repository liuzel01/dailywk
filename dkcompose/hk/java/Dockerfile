FROM ibm-semeru-runtimes:open-8-jre
# 可以使用 openjdk:8-jdk-alpine 来代替
# if java8: openjdk:8-jre-alpine
# if java11: adoptopenjdk/openjdk11:alpine-jre


WORKDIR /root

ARG JAR_FILE=./piping-warning-manage-web-1.0.jar

COPY ${JAR_FILE} ./pip.jar

COPY hklinuxlib /usr/local/hklinuxlib

CMD sleep 5; java -jar pip.jar