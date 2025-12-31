#!/bin/bash
set -e

# Add Passwall feeds (avoid duplicate)
grep -q passwall_packages feeds.conf.default || \
echo 'src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages' >> feeds.conf.default

grep -q '^src-git passwall ' feeds.conf.default || \
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >> feeds.conf.default
