#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

#添加adguardhome
#git clone https://github.com/rufengsuixing/luci-app-adguardhome package/luci-app-adguardhome

#添加ssrplus
#git clone https://github.com/fw876/helloworld.git package/helloworld

#添加lienol包
#git clone https://github.com/Gabrielxzx/lienol-openwrt-package.git package/lienol
#git clone https://github.com/xiaorouji/openwrt-package.git  package/lienol/

#添加整合包
git clone https://github.com/kenzok8/small.git package/small
git clone https://github.com/kenzok8/openwrt-packages.git package/kenzok8

#添加luci-app-dockerman
git clone https://github.com/lisaac/luci-app-dockerman.git package/dockerman

#添加luci-app-godproxy
#git clone https://github.com/godros/luci-app-godproxy.git package/luci-app-godproxy
git clone https://github.com/Gabrielxzx/luci-app-godproxy.git package/luci-app-godproxy

#添加luci-app-vssr
git clone https://github.com/jerrykuku/lua-maxminddb.git package/lua-maxminddb
git clone https://github.com/jerrykuku/luci-app-vssr.git package/vssr

#更新feeds
./scripts/feeds update -a
#安装feeds
./scripts/feeds install -a
