## 使用方法

- 启动服务

docker-compose up -d 

- 停止服务

docker-compose down 

- 跟踪日志

docker-compose logs -f app

## tips

- 数据挂载目录为： /home/data/xxxx  （自动创建，无需手动）

- target/ 下的需要跟研发确定，有无更新，如有则需要替换

    /data 为初始化脚本

    hilong-xxx-boot.jar 为项目后端java 包

    startup.sh 为容器内运行后端脚本