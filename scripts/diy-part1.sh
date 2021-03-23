#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================

#添加adguardhome
#git clone https://github.com/rufengsuixing/luci-app-adguardhome package/luci-app-adguardhome

#添加ssrplus
#git clone https://github.com/fw876/helloworld.git package/helloworld

#添加整合包
git clone https://github.com/kenzok8/small.git package/small
git clone https://github.com/kenzok8/openwrt-packages.git package/kenzok8
#git clone https://github.com/Gabrielxzx/openwrt-packages.git package/kenzok8

#添加luci-app-dockerman
git clone https://github.com/lisaac/luci-app-dockerman.git package/dockerman

#添加luci-app-godproxy
git clone https://github.com/project-lede/luci-app-godproxy.git package/luci-app-godproxy


#更新feeds
./scripts/feeds update -a
#安装feeds
./scripts/feeds install -a
