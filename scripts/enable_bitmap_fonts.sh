#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"
echo "$(basename "$0")"

cd /etc/fonts/conf.d/
sudo rm -r 70-no-bitmaps.conf
sudo ln -s ../conf.avail/70-yes-bitmaps.conf .
