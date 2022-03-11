#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
#### Modify default IP
sed -i 's/192.168.1.1/192.168.1.4/g' package/base-files/files/bin/config_generate

#### add ext luci-app
git clone https://github.com/kenzok8/small-package package/small-package

#### ext passwall depend
git clone https://github.com/kuoruan/openwrt-upx.git package/openwrt-upx

####================= customize import plugins =================############
#### hello world
git clone https://github.com/fw876/helloworld package/helloworld
### serverchan WX
git clone https://github.com/tty228/luci-app-serverchan package/luci-app-serverchan

####================= customize personal info =================############
echo 'replace host name'
sed -i 's/OpenWrt/HomeNet/g' package/base-files/files/bin/config_generate
echo 'replace banner'
wget https://raw.githubusercontent.com/dqylyln/as-op/main/banner -O package/base-files/files/etc/banner

#### update and install feeds
./scripts/feeds update -a
./scripts/feeds install
