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

# Switch rockchip KERNEL to 5.15
# rm -rf target/linux/rockchip/Makefile
# wget -P target/linux/rockchip https://raw.githubusercontent.com/coolsnowwolf/lede/3302e26e94d8afd640f37eede9dc458add36ea49/target/linux/rockchip/Makefile

# 删除源码自带的adguardhome
# rm -rf feeds/packages/net/adguardhome

# 广告屏蔽大师增加默认规则
wget -P files/usr/share/adbyby/rules/data https://anti-ad.net/anti-ad-for-dnsmasq.conf

#取消anti-ad-for-dnsmasq.conf中对电视家的屏蔽
sed -i 's/api.dianshihome.com/0013.cc/g' files/usr/share/adbyby/rules/data/anti-ad-for-dnsmasq.conf
sed -i 's/cdn.dianshihome.com/0013.cc/g' files/usr/share/adbyby/rules/data/anti-ad-for-dnsmasq.conf
sed -i 's/api.dianshige.com/0013.cc/g' files/usr/share/adbyby/rules/data/anti-ad-for-dnsmasq.conf
sed -i 's/pushapi.tvfuwu.com/0013.cc/g' files/usr/share/adbyby/rules/data/anti-ad-for-dnsmasq.conf
sed -i 's/pushapi.cdnimg.org/0013.cc/g' files/usr/share/adbyby/rules/data/anti-ad-for-dnsmasq.conf

# 修改Files大法权限
chmod -R 755 files
