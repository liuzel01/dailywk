## 说明

此部分为ai接口组件

确保 [文件夹下内容](./xm-dl.dzxj-server/) 为保证最新代码，每次部署应当去 gitee 上取最新的代码（负责人任鹏飞）

[前往下载地址](https://gitee.com/hilong_1/xm-dl.dzxj-server.git)

---

### 环境依赖

```shell
sudo apt install python3-pip
```

### 一键部署

```shell
python3 deployment.py
```

### 流程图

![流程图](./xm-dl.dzxj-server/resource/大连LNG_AI模块流程图.jpg)

### 程序开启

```shell
cd ./xm-dl.dzxj-server/WebServer
python3 service_run.py
```
