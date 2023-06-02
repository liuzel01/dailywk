# author: frank_lin@whu.edu.cn

FROM ubuntu:kinetic-20220602 as git

RUN apt-get update -y \
    && apt-get install git -y \
    && git clone https://github.com/ffay/lanproxy.git

#编译代码
FROM maven as mvn

WORKDIR /lanproxy

COPY --from=git /lanproxy ./

RUN mvn compile package -pl proxy-server -am 

RUN cd distribution && DIR_NAME=$(echo `ls` | awk '{print $NF}') && mv $DIR_NAME /lanproxy/lanproxy-server

#编译Docker镜像
FROM openjdk:8-jdk-alpine

WORKDIR /lanproxy-server

COPY --from=mvn /lanproxy/lanproxy-server ./

EXPOSE 8090 4900 4993

CMD ["sh", "-c", "sh bin/startup.sh && tail -f logs/server.log"]