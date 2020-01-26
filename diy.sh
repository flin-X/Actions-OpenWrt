#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
echo "Modify default IP"
sed -i 's/192.168.1.1/192.168.111.1/g' package/base-files/files/bin/config_generate
#Modify default ssid
echo "Modify default ssid"
sed -i 's/OpenWrt/BOOT/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
#Modify default theme
echo "Modify default theme"
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
sed -i 's/bootstrap/argon/g' feeds/luci/modules/luci-base/root/etc/config/luci
#Update luci-theme-argon
echo "Update luci-theme-argon"
rm -rf package/lean/luci-theme-argon
git clone https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon
