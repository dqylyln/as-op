#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
#### Modify default IP
sed -i 's/192.168.1.1/192.168.1.8/g' package/base-files/files/bin/config_generate

#### add ext luci-app
#git clone https://github.com/kenzok8/small-package package/small-package
#rm -rf package/small-package/firewall
#rm -rf package/small-package/firewall4

####================= customize personal info =================############
### replace host name
# sed -i 's/OpenWrt/HomeNet/g' package/base-files/files/bin/config_generate

### replace banner
wget https://raw.githubusercontent.com/dqylyln/as-op/main/banner -O package/base-files/files/etc/banner

#### update and install feeds
./scripts/feeds update -a
./scripts/feeds install
