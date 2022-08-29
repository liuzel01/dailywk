## 使用方法

对运维支撑组所用到的各组件的说明

### gitlab

gitlab 除配置文件外，还需将提前破解好的公钥等文件复制进 重新启用的 gitlab 容器内

### jenkins

- 启动服务

docker-compose -f jenkins.yml up -d 

- 停止服务

docker-compose -f jenkins.yml down 

- 跟踪日志

docker-compose -f jenkins.yml logs -f --tail=100

## tips
