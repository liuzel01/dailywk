FROM ubuntu:kinetic-20220602

WORKDIR /root

ARG JAR_FILE=./LiveNVR-linux-6.2.7-22071520.tar.gz
ADD ${JAR_FILE} .

EXPOSE 10800
EXPOSE 40000-40500

ENV TZ=Asia/Shanghai

CMD ["/bin/bash","./LiveNVR-linux-6.2.7-22071520/start.sh"]