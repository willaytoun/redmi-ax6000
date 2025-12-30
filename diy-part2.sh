#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# 1. 修复：注释掉报错的 sed 命令（zzz-default-settings 路径不存在会导致 Action 失败）
# sed -i '/CYXluq4wUazHjmCDBCqXF/d' package/lean/default-settings/files/zzz-default-settings

# 2. 修复：清理可能冲突的残留
rm -rf feeds/luci/applications/luci-app-passwall
rm -rf feeds/packages/net/passwall

# 3. 设置默认IP（可选，如果你想把路由器IP改成 192.168.31.1，请取消下面这行的注释）
# sed -i 's/192.168.1.1/192.168.31.1/g' package/base-files/files/bin/config_generate
