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

# Modify default IP
sed -i 's/192.168.1.1/10.0.0.2/g' package/base-files/files/bin/config_generate
sed -i 's/root::0:0:99999:7:::/root:$1$RdfjjTzD$p3MPGrO2dpz2cuTNKPenN.:0:0:99999:7:::/g' package/base-files/files/etc/shadow
sed -i 's/root:::0:99999:7:::/root:$1$RdfjjTzD$p3MPGrO2dpz2cuTNKPenN.:0:0:99999:7:::/g' package/base-files/files/etc/shadow
sed -i "s/hostname='OpenWrt'/hostname='CeeWrt'/g" package/base-files/files/bin/config_generate
sed -i '/option check_signature/d' /etc/opkg.conf
