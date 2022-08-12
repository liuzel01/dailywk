#!/bin/bash 

# 初始化命令
# java -cp app.jar -Dloader.main=org.hlframework.iot.server.HlInstallApplication org.springframework.boot.loader.PropertiesLauncher 


# 启动后端命令
java -jar app.jar -Dloader.main=org.hlframework.iot.server.HlServerApplication -Dspring.jpa.hibernate.ddl-auto=none org.springframework.boot.loader.PropertiesLauncher
