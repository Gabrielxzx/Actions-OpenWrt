#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================

#更新feeds
./scripts/feeds update -a

#添加自用备份包
git clone --depth 1 https://github.com/Gabrielxzx/Gabrielxzx-luci.git package/Gabrielxzx

#添加1806版本 luci-app-unblockneteasemusic
rm -rf feeds/kenzok8/luci-app-unblockneteasemusic
git clone -b master https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic.git package/luci-app-unblockneteasemusic

# 修改主题
rm -rf package/lean/luci-theme-argon
rm -rf feeds/luci/themes/luci-theme-design
rm -rf feeds/luci/applications/luci-app-design-config

# 修改Passwall和SSRPLUS
rm -rf feeds/small/luci-app-ssr-plus
rm -rf feeds/small/luci-app-passwall
rm -rf feeds/small/luci-app-passwall2
rm -rf feeds/helloworld/chinadns-ng
rm -rf feeds/helloworld/xray-core
rm -rf feeds/helloworld/hysteria

# 修改luci-app-adguardhome
rm -rf feeds/kenzok8/luci-app-adguardhome

# 修改luci-app-aliyundrive-webdav
rm -rf feeds/luci/applications/luci-app-aliyundrive-webdav
rm -rf feeds/packages/multimedia/aliyundrive-webdav

# 添加luci-app-go-aliyundrive-webdav(jerrykuku库)
git clone https://github.com/jerrykuku/luci-app-go-aliyundrive-webdav.git package/luci-app-go-aliyundrive-webdav
git clone https://github.com/jerrykuku/go-aliyundrive-webdav.git package/go-aliyundrive-webdav

# 修改SmartDNS
# rm -rf feeds/kenzok8/luci-app-smartdns
# git clone -b lede https://github.com/pymumu/luci-app-smartdns.git feeds/kenzok8/luci-app-smartdns

#安装feeds
./scripts/feeds install -a
