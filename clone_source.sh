#!/bin/bash
set -ex

git clone --branch "openwrt-24.10" --single-branch "https://github.com/immortalwrt/immortalwrt.git" /home/runner/openwrt
cd /home/runner/openwrt

./scripts/feeds update -a && ./scripts/feeds install -a
