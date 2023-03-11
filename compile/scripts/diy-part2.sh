#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

# Modify default IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate


# add files
# Fix luci-app-adbyby-plus
wget -P files/etc/init.d https://raw.githubusercontent.com/Gabrielxzx/Gabrielxzx-luci/master/files/luci-app-adbyby-plus/adbyby
wget -P files/usr/share/adbyby https://raw.githubusercontent.com/Gabrielxzx/Gabrielxzx-luci/master/files/luci-app-adbyby-plus/ad-update
wget -P files/usr/share/adbyby https://raw.githubusercontent.com/Gabrielxzx/Gabrielxzx-luci/master/files/luci-app-adbyby-plus/adblock.sh
wget -P files/usr/share/adbyby https://raw.githubusercontent.com/Gabrielxzx/Gabrielxzx-luci/master/files/luci-app-adbyby-plus/diyruleupdate.sh
wget -P files/usr/share/adbyby https://raw.githubusercontent.com/Gabrielxzx/Gabrielxzx-luci/master/files/luci-app-adbyby-plus/dnsmasq.adblock
wget -P files/usr/share/adbyby/data https://raw.githubusercontent.com/Gabrielxzx/Gabrielxzx-luci/master/files/luci-app-adbyby-plus/data/lazy.txt
wget -P files/usr/share/adbyby/data https://raw.githubusercontent.com/Gabrielxzx/Gabrielxzx-luci/master/files/luci-app-adbyby-plus/data/video.txt

# fix luci-app-adguardhome
wget -P files/etc/init.d https://raw.githubusercontent.com/Gabrielxzx/Gabrielxzx-luci/master/files/luci-app-adguardhome/adguardhome
wget -P files/usr/bin https://raw.githubusercontent.com/Gabrielxzx/Gabrielxzx-luci/master/files/luci-app-adguardhome/core/AdGuardHome

# fix luci-app-openclash
wget -P files/etc/openclash/core https://raw.githubusercontent.com/Gabrielxzx/Gabrielxzx-luci/master/files/luci-app-openclash/core/clash
wget -P files/etc/openclash/core https://raw.githubusercontent.com/Gabrielxzx/Gabrielxzx-luci/master/files/luci-app-openclash/core/clash_meta
wget -P files/etc/openclash/core https://raw.githubusercontent.com/Gabrielxzx/Gabrielxzx-luci/master/files/luci-app-openclash/core/clash_tun

# fix luci-app-passwall
wget -P files/usr/bin https://raw.githubusercontent.com/Gabrielxzx/Gabrielxzx-luci/master/files/luci-app-passwall/core/trojan-go

# fix others
wget -P files/usr/share/jd-dailybonus https://raw.githubusercontent.com/Gabrielxzx/Gabrielxzx-luci/master/files/others/JD_DailyBonus.js
wget -P files/etc https://raw.githubusercontent.com/Gabrielxzx/Gabrielxzx-luci/master/files/others/docker-init
wget -P files/etc https://raw.githubusercontent.com/Gabrielxzx/Gabrielxzx-luci/master/files/others/docker-web
wget -P files/www/luci-static/vssr https://raw.githubusercontent.com/Gabrielxzx/Gabrielxzx-luci/master/files/others/jquery.min.js

# add root files
wget -P files/root https://raw.githubusercontent.com/Gabrielxzx/Gabrielxzx-luci/master/files/root/pandownload-fake-server-1-1.ipk
wget -P files/root https://raw.githubusercontent.com/Gabrielxzx/Gabrielxzx-luci/master/files/root/pd-install
wget -P files/root https://raw.githubusercontent.com/Gabrielxzx/Gabrielxzx-luci/master/files/root/resetssrp


# 广告屏蔽大师增加默认规则 anti-ad
wget -P files/usr/share/adbyby/rules/data https://anti-ad.net/anti-ad-for-dnsmasq.conf
sed -i 's/api.dianshihome.com/0013.cc/g' files/usr/share/adbyby/rules/data/anti-ad-for-dnsmasq.conf
sed -i 's/cdn.dianshihome.com/0013.cc/g' files/usr/share/adbyby/rules/data/anti-ad-for-dnsmasq.conf
sed -i 's/api.dianshige.com/0013.cc/g' files/usr/share/adbyby/rules/data/anti-ad-for-dnsmasq.conf
sed -i 's/pushapi.tvfuwu.com/0013.cc/g' files/usr/share/adbyby/rules/data/anti-ad-for-dnsmasq.conf
sed -i 's/pushapi.cdnimg.org/0013.cc/g' files/usr/share/adbyby/rules/data/anti-ad-for-dnsmasq.conf

# 修改Files大法权限
chmod -R 755 files
