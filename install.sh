#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"
echo "$(basename "$0")"

sudo apt-get install openbox
sudo apt-get install tint2
sudo apt-get install compton
sudo apt-get install rofi
sudo apt-get install feh
