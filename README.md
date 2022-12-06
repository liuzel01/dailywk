## 使用说明

> 项目上、运维支撑组等用到的，各组件的docker-compose 配置，供参考

---
**<font color=red>各目录快捷跳转：</font>**

- [frp](./frp/)

- [gitlab](./gitlab/)

- [jenkins](./jenkins/)

- [minio](./minio/)

- [kuboard](./kuboard/)

- [lanproxy](./lanproxy/)

- [nexus](./nexus/)

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

### minio


用途： 用来代理阿里云的 OSS 服务（~~云上OSS 观看文件效果不方便~~）

- 启动服务

cd /home/minio

docker-compose up -d 

- MINIO_ROOT_USER 和 MINIO_ROOT_PASSWORD一定要用阿里云的，否则代理不到

## tips

- [ ] 每次对 gitlab 服务重启后，其内部的公钥等破解文件都会被还原

- 所以，需要对文件重新破解、重启复制进容器内。。

- **后续解决**
