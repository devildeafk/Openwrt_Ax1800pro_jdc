#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#




#替换为新版本golang
# rm -rf feeds/packages/lang/golang
# git clone https://github.com/kenzok8/golang feeds/packages/lang/golang
# ./scripts/feeds install -a -f
# 将 ddns-go 及其 Luci 界面插件在编译配置中彻底关闭
sed -i 's/CONFIG_PACKAGE_ddns-go=y/# CONFIG_PACKAGE_ddns-go is not set/' .config
sed -i 's/CONFIG_PACKAGE_luci-app-ddns-go=y/# CONFIG_PACKAGE_luci-app-ddns-go is not set/' .config



