#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================

#更新feeds
./scripts/feeds update -a

#添加整合包
#git clone https://github.com/kenzok8/small.git package/small
#git clone https://github.com/kenzok8/openwrt-packages.git package/kenzok

#添加luci-app-godproxy
git clone https://github.com/project-lede/luci-app-godproxy.git package/luci-app-godproxy

# 修改luci-theme-argon(更换为jerrykuku库)
cd package/lean
rm -rf luci-theme-argon
git clone https://github.com/jerrykuku/luci-theme-argon.git
cd


# 修改Passwall和SSRPLUS
cd feeds/kenzok8
rm -rf luci-app-passwall
rm -rf luci-app-ssr-plus
cd

#安装feeds
./scripts/feeds install -a
