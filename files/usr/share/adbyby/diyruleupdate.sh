#!/bin/bash

#取消anti-ad-for-dnsmasq.conf中对电视家的屏蔽
sed -i 's/api.dianshihome.com/0013.cc/g' /usr/share/adbyby/rules/data/anti-ad-for-dnsmasq.conf
sed -i 's/cdn.dianshihome.com/0013.cc/g' /usr/share/adbyby/rules/data/anti-ad-for-dnsmasq.conf
sed -i 's/api.dianshige.com/0013.cc/g' /usr/share/adbyby/rules/data/anti-ad-for-dnsmasq.conf
sed -i 's/pushapi.tvfuwu.com/0013.cc/g' /usr/share/adbyby/rules/data/anti-ad-for-dnsmasq.conf
sed -i 's/pushapi.cdnimg.org/0013.cc/g' /usr/share/adbyby/rules/data/anti-ad-for-dnsmasq.conf

#取消lite_dnsmasq.conf中对电视家的屏蔽
#sed -i 's/api.dianshihome.com/0013.cc/g' /usr/share/adbyby/rules/data/lite_dnsmasq.conf
#sed -i 's/cdn.dianshihome.com/0013.cc/g' /usr/share/adbyby/rules/data/lite_dnsmasq.conf
#sed -i 's/api.dianshige.com/0013.cc/g' /usr/share/adbyby/rules/data/lite_dnsmasq.conf
#sed -i 's/pushapi.tvfuwu.com/0013.cc/g' /usr/share/adbyby/rules/data/lite_dnsmasq.conf
#sed -i 's/pushapi.cdnimg.org/0013.cc/g' /usr/share/adbyby/rules/data/lite_dnsmasq.conf
