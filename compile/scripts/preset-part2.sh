#!/bin/bash

echo "
#============================================================
# File name: preset-adbyby-rules.sh
# Description: download adbyby dnsmasq.adblock rules (After Update feeds)
# Author: Actions-OpenWrt
# https://github.com/Gabrielxzx/Actions-OpenWrt
#============================================================             
"

mkdir -p adbyby/rules
mkdir -p files/usr/share/adbyby

wget -qO adbyby/rules/adnew.conf https://easylist-downloads.adblockplus.org/easylistchina+easylist.txt

cat adbyby/rules/adnew.conf | grep ^\|\|[^\*]*\^$ | sed -e 's:||:address\=\/:' -e 's:\^:/0\.0\.0\.0:' > files/usr/share/adbyby/dnsmasq.adblock

chmod +x files/usr/share/adbyby/dnsmasq.adblock


echo "
#============================================================
# File name: preset-bingdaily-background.sh
# Description: download bingdaily background (After Update feeds)
# Author: Actions-OpenWrt
# https://github.com/Gabrielxzx/Actions-OpenWrt
#============================================================          
"

BG_PATH_argone="files/www/luci-static/argone/background"
BG_PATH_argon="files/www/luci-static/argon/background"
mkdir -p $BG_PATH_argone
mkdir -p $BG_PATH_argon

wget -P $BG_PATH_argone https://raw.githubusercontent.com/Gabrielxzx/Gabrielxzx-luci/master/files/background_picture/argon_bg/argon_bg1.jpg
wget -P $BG_PATH_argone https://raw.githubusercontent.com/Gabrielxzx/Gabrielxzx-luci/master/files/background_picture/argon_bg/argon_bg2.jpg
wget -P $BG_PATH_argon https://raw.githubusercontent.com/Gabrielxzx/Gabrielxzx-luci/master/files/background_picture/argon_bg/argon_bg1.jpg
wget -P $BG_PATH_argon https://raw.githubusercontent.com/Gabrielxzx/Gabrielxzx-luci/master/files/background_picture/argon_bg/argon_bg2.jpg

for i in {0..9}
do

	BG_date=$(date -d "$i days ago" "+%Y%m%d")

	BG_LINK=$(curl -sL https://dailybing.com/view/zh-cn/$BG_date.html | grep UHD | awk -F '"' 'NR == 1 {print $2}')
	echo $i $BG_LINK

	wget -qO $BG_PATH_argone/BINGBG_$BG_date.jpg $BG_LINK
	wget -qO $BG_PATH_argon/BINGBG_$BG_date.jpg $BG_LINK

done
