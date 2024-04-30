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

#添加自用备份包
git clone --depth 1 https://github.com/Gabrielxzx/Gabrielxzx-luci.git package/Gabrielxzx

#添加luci-app-ikoolproxy
git clone https://github.com/iwrt/luci-app-ikoolproxy.git package/luci-app-ikoolproxy

#添加1806版本 luci-app-unblockneteasemusic
rm -rf feeds/kenzok8/luci-app-unblockneteasemusic
git clone -b master https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic.git package/luci-app-unblockneteasemusic

# 修改luci-theme-argon(更换为jerrykuku库)
rm -rf package/lean/luci-theme-argon
# git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon
# git clone https://github.com/jerrykuku/luci-app-argon-config.git package/luci-app-argon-config

# 修改Passwall和SSRPLUS
rm -rf feeds/small/luci-app-ssr-plus
rm -rf feeds/small/luci-app-passwall
rm -rf feeds/small/luci-app-passwall2
rm -rf feeds/helloworld/chinadns-ng
rm -rf feeds/helloworld/xray-core
rm -rf feeds/helloworld/hysteria
# git clone -b main https://github.com/xiaorouji/openwrt-passwall.git package/openwrt-passwall

# 修改luci-app-adguardhome
rm -rf feeds/kenzok8/luci-app-adguardhome

# 修改luci-app-aliyundrive-webdav
rm -rf feeds/luci/applications/luci-app-aliyundrive-webdav
rm -rf feeds/packages/multimedia/aliyundrive-webdav

# 添加luci-app-go-aliyundrive-webdav(jerrykuku库)
git clone https://github.com/jerrykuku/luci-app-go-aliyundrive-webdav.git package/luci-app-go-aliyundrive-webdav
git clone https://github.com/jerrykuku/go-aliyundrive-webdav.git package/go-aliyundrive-webdav

# 添加luci-app-jd-dailybonus(jerrykuku库)
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/luci-app-jd-dailybonus

# 修改SmartDNS
# rm -rf feeds/kenzok8/luci-app-smartdns
# git clone -b lede https://github.com/pymumu/luci-app-smartdns.git feeds/kenzok8/luci-app-smartdns

# curl/8.5.0 - fix passwall `time_pretransfer` check
# rm -rf feeds/packages/net/curl
# git clone https://github.com/sbwml/feeds_packages_net_curl.git feeds/packages/net/curl

#安装feeds
./scripts/feeds install -a
