#!/bin/bash

# 确定项目的根目录
proje_dir=$(pwd)

docker_install() {
    # 判断操作系统，进行针对性安装
    case "$lsb_dist" in
    ubuntu)
        cd ./docker/ubuntu20
        sudo dpkg -i containerd.io_1.4.12-1_amd64.deb
        sudo dpkg -i docker-ce-cli_20.10.12~3-0~ubuntu-focal_amd64.deb
        sudo dpkg -i docker-ce_20.10.12~3-0~ubuntu-focal_amd64.deb
        \cp ../docker-compose /usr/bin/
        echo "已安装 docker 版本为： " "$(docker -v)"
        echo "已安装 docker compose 版本为： " "$(docker-compose -v)"
        ;;
    centos | kylin | rhel | sles)
        cd ./docker/centos7
        rpm -ivh *.rpm --force --nodeps &>/dev/null
	    systemctl start docker && systemctl enable docker
        \cp ../docker-compose /usr/bin/
        echo "已安装 docker 版本为： " "$(docker -v)"
        echo "已安装 docker compose 版本为： " "$(docker-compose -v)"
        ;;
    *)
        exit 1
        ;;
    esac
}

get_distribution() {
    lsb_dist=""
    if [ -r /etc/os-release ]; then
        lsb_dist="$(. /etc/os-release && echo "$ID")"
        lsb_dist="$(echo "${lsb_dist}" | tr '[:upper:]' '[:lower:]')"
        docker_install
        echo "$lsb_dist"
    fi
    echo "$lsb_dist"
}

# 检测有无docker 环境，没有则安装
function docker_check() {
    echo "检查 docker ..."
    docker -v &>/dev/null
    if [ $? -eq 0 ]; then
        echo "已安装 docker 版本为： " "$(docker -v)"
        compose_check
    else
        echo "is going to install docker..."
        get_distribution
    fi
}

function compose_check() {
    echo "检查 docker compose ..."
    docker-compose -v &>/dev/null
    if [ $? -eq 0 ]; then
        echo "已安装 docker compose 版本为： " "$(docker-compose -v)"
    else
        echo "is going to install docker compose ..."
        get_distribution
    fi
}

docker_check

# 导入各服务部署所需要的镜像
cd "${proje_dir}"/images

IMAGES=( java_jar.tar redis7.tar nginx.tar mysql8.tar )
for i in "${IMAGES[@]}"; do
    echo ${i}
    docker load -i ${i}
done
