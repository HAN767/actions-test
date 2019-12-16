#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/10.0.0.5/g' package/base-files/files/bin/config_generate
echo -e "\nsrc-git lienol https://github.com/Lienol/openwrt-package" >> feeds.conf.default
./scripts/feeds update -a
./scripts/feeds install -a
