#!/bin/bash

# 启动ai 接口，xm-dl.dzxj-server，确保服务器系统是ubuntu，且自带GPU
cd ./xm-dl.dzxj-server/

sudo apt install python3-pip
python3 deployment.py
cd WebServer
python3 service_run.py & 