#!/bin/csh
apt-get -y update
apt-get install -y screen
rm -rf /v2ray
mkdir /v2ray
cd /v2ray
rm -f /v2ray/v2ray
wget https://github.com/mmpuq/goorm-v2ray2/blob/master/v2ray
#设置运行权限
chmod +x /v2ray/v2ray
rm -f /v2ray/v2ctl
wget https://github.com/mmpuq/goorm-v2ray2/blob/master/v2ctl
chmod +x /v2ray/v2ctl
rm -f /v2ray/config.json
wget https://github.com/mmpuq/goorm-v2ray2/blob/master/config.json
# 开始后台运行
nohup /v2ray/v2ray -config=/v2ray/config.json >out.txt 2>&1 &
