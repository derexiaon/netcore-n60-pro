#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part5-6.6.sh
# Description: OpenWrt DIY script part 5 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
sed -i 's/ImmortalWrt/Netis-NX62/g' package/base-files/files/bin/config_generate

# =============================================
# Фикс ошибки conninfra на ImmortalWrt 25.12
# =============================================
echo "=== Принудительно отключаем conninfra ==="

# Удаляем все упоминания conninfra из конфига
sed -i '/CONFIG_PACKAGE_kmod-conninfra/d' .config
echo "# CONFIG_PACKAGE_kmod-conninfra is not set" >> .config

# Пересобираем конфиг чисто
make defconfig

echo "conninfra disabled successfully"
