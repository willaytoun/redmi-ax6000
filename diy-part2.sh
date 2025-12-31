#!/bin/bash
set -e

# ⚠️ ImmortalWrt does NOT have this file (Lean only)
# sed -i '/CYXluq4wUazHjmCDBCqXF/d' package/lean/default-settings/files/zzz-default-settings

# ⚠️ Do NOT delete passwall from feeds
# It is provided by feeds and selected in .config
# rm -rf feeds/luci/applications/luci-app-passwall
# rm -rf feeds/packages/net/passwall
