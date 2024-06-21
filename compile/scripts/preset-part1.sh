#!/bin/bash


echo "
#============================================================
# File name: preset-adguard-core.sh
# Description: download adguardhome core (After Update feeds)
# Author: haiibo
# https://github.com/haiibo/OpenWrt
#============================================================                  
"

mkdir -p files/usr/bin

AGH_CORE=$(curl -sL https://api.github.com/repos/AdguardTeam/AdGuardHome/releases/latest | grep /AdGuardHome_linux_${1} | awk -F '"' '{print $4}')

echo $AGH_CORE

wget -qO- $AGH_CORE | tar xOvz > files/usr/bin/AdGuardHome

chmod +x files/usr/bin/AdGuardHome


echo "
#============================================================
# File name: preset-clash-core.sh
# Description: download clash core (After Update feeds)
# Author: haiibo
# https://github.com/haiibo/OpenWrt
#============================================================             
"

mkdir -p files/etc/openclash/core

CLASH_DEV_URL="https://raw.githubusercontent.com/vernesong/OpenClash/core/master/dev/clash-linux-${1}.tar.gz"
CLASH_TUN_URL=$(curl -fsSL https://api.github.com/repos/vernesong/OpenClash/contents/master/premium\?ref\=core | grep download_url | grep ${1} | awk -F '"' '{print $4}' | grep -v 'v3')
CLASH_META_URL="https://raw.githubusercontent.com/vernesong/OpenClash/core/master/meta/clash-linux-${1}.tar.gz"
GEOIP_URL="https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geoip.dat"
GEOSITE_URL="https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geosite.dat"

echo $CLASH_DEV_URL
echo $CLASH_TUN_URL
echo $CLASH_META_URL

wget -qO- $CLASH_DEV_URL | tar xOvz > files/etc/openclash/core/clash
wget -qO- $CLASH_TUN_URL | gunzip -c > files/etc/openclash/core/clash_tun
wget -qO- $CLASH_META_URL | tar xOvz > files/etc/openclash/core/clash_meta
wget -qO- $GEOIP_URL > files/etc/openclash/GeoIP.dat
wget -qO- $GEOSITE_URL > files/etc/openclash/GeoSite.dat

chmod +x files/etc/openclash/core/clash*