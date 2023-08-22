## 使用方法

- 启动服务

docker-compose up -d

- 停止服务

docker-compose down

- 跟踪日志

docker-compose logs -f app

### 各组件访问

- pg:

    <http://127.0.0.1:5432>

    登录账号/密码： pg14  123456

    数据库名： iot

- mqtt：

    <http://127.0.0.1:15672>

    登录账号/密码： wanfang  wanfang12345678

- cassandra:

    <http://127.0.0.1:9042>

- 后端 swagger

    <http://127.0.0.1:8091/swagger-ui.html>

- 前端页面：

    <http://127.0.0.1/>

    登录账号/密码： <tenant@hilongit.com>  tenant

## tips

1. 数据挂载目录为： /home/data/xxxx  （自动创建，无需手动）

2. target/ 下的内容，**此处一定提前跟研发确定有无更新，如有则需要替换**

    [target/data 目录下](./target/data/) 为初始化脚本

    target/hilong-xxx-boot.jar 为项目后端java 包

    [target/startup.sh](./target/startup.sh) 为容器内运行后端脚本

    目录可参考如下结构：

    ```bash
    ../data/
    ├── cassandra
    │   ├── schema-ts.cql
    │   └── schema-ts-latest.cql
    ├── certs
    │   └── azure
    │       └── BaltimoreCyberTrustRoot.crt.pem
    ├── json
    │   ├── demo
    │   │   └── dashboards
    │   ├── system
    │   │   ├── oauth2_config_templates
    │   │   └── widget_bundles
    │   └── tenant
    │       ├── device_profile
    │       ├── edge_management
    │       └── rule_chains
    ├── sql
    │   ├── schema-entities-idx-psql-addon.sql
    │   ├── schema-entities-idx.sql
    │   ├── schema-entities.sql
    │   ├── schema-timescale.sql
    │   └── schema-ts-psql.sql
    └── upgrade
        ├── 1.3.0
        │   └── schema_update.cql
        ├── 1.3.1
        │   └── schema_update.sql
        ├── 1.4.0
        │   ├── schema_update.cql
        │   └── schema_update.sql
        ├── 2.0.0
        │   ├── schema_update.cql
        │   └── schema_update.sql
        ├── 2.1.1
        │   ├── schema_update.cql
        │   └── schema_update.sql
        ├── 2.1.2
        │   ├── schema_update.cql
        │   └── schema_update.sql
        ├── 2.2.0
        │   └── schema_update.sql
        ├── 2.3.1
        │   └── schema_update.sql
        ├── 2.4.0
        │   └── schema_update.sql
        ├── 2.4.2
        │   └── schema_update.sql
        ├── 2.4.3
        │   ├── schema_update_psql_drop_partitions.sql
        │   ├── schema_update_psql_ts.sql
        │   ├── schema_update_timescale_ts.sql
        │   └── schema_update_ttl.sql
        ├── 3.0.1
        │   ├── schema_ts_latest.sql
        │   └── schema_update_to_uuid.sql
        ├── 3.1.0
        │   └── schema_update.sql
        ├── 3.1.1
        │   ├── schema_update_after.sql
        │   └── schema_update_before.sql
        ├── 3.2.1
        │   ├── schema_update.sql
        │   └── schema_update_ttl.sql
        ├── 3.2.2
        │   ├── schema_update_event.sql
        │   ├── schema_update.sql
        │   └── schema_update_ttl.sql
        └── 3.3.2
            ├── schema_update_lwm2m_bootstrap.sql
            └── schema_update.sql

    32 directories, 38 files
    ```

- data 文件获取路径，如下图所示

![所属路径](https://tva1.sinaimg.cn/large/006DaNoWgy1h59vmpbfo2j31hc0pwam0.jpg "所属路径")
