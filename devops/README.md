## 使用方法

对工作中所用到的各组件的说明

### gitlab

gitlab 除配置文件外，还需将提前破解好的公钥等文件复制进容器内

### jenkins

- 启动服务

docker-compose -f jenkins.yml up -d 

- 停止服务

docker-compose -f jenkins.yml down 

- 跟踪日志

docker-compose -f jenkins.yml logs -f --tail=100

## tips

每次对 gitlab 服务重启后，其内部的公钥等破解文件都会被还原

- 所以，需要对文件重新破解、重启复制进容器内。。

- **后续解决**