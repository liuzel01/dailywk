#!/bin/bash
#注意1：执行该脚本前，需要先执行安装docker，docker-compose脚本
#注意2：将项目部署包hk.zip放在/usr/local/src下,并使用unzip hk.zip解压

#关闭selinux
sed -i 's/SELINUX=enforcing/SELINUX=disabled/' /etc/selinux/config
setenforce 0

#nginx部署相关
mkdir -p /usr/local/nginx/{conf,html,logs}
cp /usr/local/src/hk/nginx.conf /usr/local/nginx
cp /usr/local/src/hk/default.conf /usr/local/nginx/conf
cp -r /usr/local/src/hk/pipeline-vue /usr/local/nginx/html

#redis部署相关
mkdir -p /usr/local/redis/{conf,data}
touch /usr/local/redis/conf/redis.conf

#mysql部署相关
cp -r /usr/local/src/hk/mysql /usr/local/

#jar包部署相关
mkdir /usr/local/java
cp /usr/local/src/hk/piping-warning-manage-web-1.0.jar /usr/local/java

#拷贝docker-compose.yml文件
mkdir /usr/local/hk
cp /usr/local/src/hk/docker-compose.yml /usr/local/hk

#创建上传资源的目录
mkdir -p /opt/upFiles/piping/zsgd

#docker-compose 启动
cd /usr/local/hk
docker-compose up -d

#加入开机启动
echo "cd /usr/local/hk" >> /etc/rc.d/rc.local
echo "docker-compose up -d" >> /etc/rc.d/rc.local
chmod +x /etc/rc.d/rc.local
