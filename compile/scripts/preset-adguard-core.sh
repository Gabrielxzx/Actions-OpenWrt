#!/bin/bash
#============================================================
# File name: preset-adguard-core.sh
# Description: download adguardhome core (After Update feeds)
# Author: haiibo
# https://github.com/haiibo/OpenWrt
#============================================================

mkdir -p files/usr/bin

AGH_CORE=$(curl -sL https://api.github.com/repos/AdguardTeam/AdGuardHome/releases/latest | grep /AdGuardHome_linux_${1} | awk -F '"' '{print $4}')

echo $AGH_CORE

wget -qO- $AGH_CORE | tar xOvz > files/usr/bin/AdGuardHome

chmod +x files/usr/bin/AdGuardHome