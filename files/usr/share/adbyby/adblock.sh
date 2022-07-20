#!/bin/sh

uclient-fetch --no-check-certificate -O - 'https://easylist-downloads.adblockplus.org/easylistchina+easylist.txt' > /tmp/adnew.conf
uclient-fetch --no-check-certificate -O - 'https://anti-ad.net/anti-ad-for-dnsmasq.conf' > /usr/share/adbyby/rules/data/anti-ad-for-dnsmasq.conf
#uclient-fetch --no-check-certificate -O - 'https://neodev.team/lite_dnsmasq.conf' > /usr/share/adbyby/rules/data/lite_dnsmasq.conf

/usr/share/adbyby/diyruleupdate.sh

if [ -s "/tmp/adnew.conf" ];then
  /usr/share/adbyby/ad-update
fi

rm -f /tmp/adbyby.updated 
sleep 10
/etc/init.d/adbyby restart
