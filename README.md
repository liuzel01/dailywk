## 使用说明

> 项目上、运维支撑组等用到的，各组件的docker-compose 配置，供参考

### gitlab

gitlab 除配置文件外，还需将提前破解好的公钥等文件复制进容器内

### jenkins

- 启动服务

~~docker-compose -f jenkins.yml up -d~~

docker-compose up -d 

- 停止服务

~~docker-compose -f jenkins.yml down~~

docker-compose down 

- 跟踪日志

~~docker-compose -f jenkins.yml logs -f --tail=100~~

docker-compose logs -f --tail=100 

## tips

- [ ] 每次对 gitlab 服务重启后，其内部的公钥等破解文件都会被还原

- 所以，需要对文件重新破解、重启复制进容器内。。

- **后续解决**
