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

#添加luci-app-ikoolproxy
git clone https://github.com/iwrt/luci-app-ikoolproxy.git package/luci-app-ikoolproxy

#添加luci-app-unblockneteasemusic
git clone https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic.git package/luci-app-unblockneteasemusic

# 修改luci-theme-argon(更换为jerrykuku库)
rm -rf package/lean/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon
git clone https://github.com/jerrykuku/luci-app-argon-config.git package/luci-app-argon-config

# 修改Passwall和SSRPLUS
rm -rf feeds/kenzok8/luci-app-passwall
rm -rf feeds/kenzok8/luci-app-ssr-plus
rm -rf feeds/kenzok8/luci-app-passwall2
git clone -b luci https://github.com/xiaorouji/openwrt-passwall.git package/openwrt-passwall

#添加luci-app-go-aliyundrive-webdav(jerrykuku库)
git clone https://github.com/jerrykuku/luci-app-go-aliyundrive-webdav.git package/luci-app-go-aliyundrive-webdav
git clone https://github.com/jerrykuku/go-aliyundrive-webdav.git package/go-aliyundrive-webdav

#添加luci-app-jd-dailybonus(jerrykuku库)
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/luci-app-jd-dailybonus

# 修改SmartDNS
# rm -rf feeds/kenzok8/luci-app-smartdns
# git clone -b lede https://github.com/pymumu/luci-app-smartdns.git feeds/kenzok8/luci-app-smartdns

#安装feeds
./scripts/feeds install -a
