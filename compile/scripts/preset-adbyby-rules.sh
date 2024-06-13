#!/bin/bash
#============================================================
# File name: preset-adbyby-rules.sh
# Description: download adbyby dnsmasq.adblock rules (After Update feeds)
# Author: Actions-OpenWrt
# https://github.com/Gabrielxzx/Actions-OpenWrt
#============================================================

mkdir -p adbyby/rules
mkdir -p files/usr/share/adbyby

wget -qO adbyby/rules/adnew.conf https://easylist-downloads.adblockplus.org/easylistchina+easylist.txt

cat adbyby/rules/adnew.conf | grep ^\|\|[^\*]*\^$ | sed -e 's:||:address\=\/:' -e 's:\^:/0\.0\.0\.0:' > files/usr/share/adbyby/dnsmasq.adblock

chmod +x files/usr/share/adbyby/dnsmasq.adblock
