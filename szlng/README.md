## 使用方法

- 启动服务

docker-compose up -d 

- 停止服务

docker-compose down 

- 跟踪日志

docker-compose logs -f app

### 各组件访问

- pg:

    http://127.0.0.1:5432 

    登录账号/密码： pg14  123456
    
    数据库名： iot

- mqtt：

    http://127.0.0.1:15672

    登录账号/密码： wanfang  wanfang12345678

- cassandra: 

    http://127.0.0.1:9042

- 后端 swagger

    http://127.0.0.1:8091/swagger-ui.html

- 前端页面：

    http://127.0.0.1/

    登录账号/密码： tenant@hilongit.com  tenant


## tips

- 数据挂载目录为： /home/data/xxxx  （自动创建，无需手动）

- target/ 下的内容，**一定提前跟研发确定有无更新，如有则需要替换**

    [target/data](http://172.16.2.122/devops/xm-dkcompose-devops/-/tree/main/szlng/target/data) 为初始化脚本

    target/hilong-xxx-boot.jar 为项目后端java 包

    [target/startup.sh](http://172.16.2.122/devops/xm-dkcompose-devops/-/blob/main/szlng/target/startup.sh) 为容器内运行后端脚本

- data 文件获取路径，如下图所示

![所属路径](https://tva1.sinaimg.cn/large/006DaNoWgy1h59vmpbfo2j31hc0pwam0.jpg "所属路径")