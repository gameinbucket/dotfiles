#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"
echo "$(basename "$0")"

./cp_colorschemes.sh
./cp_themes.sh
./cp_fonts.sh
./cp_rofi.sh
./cp_tint2.sh
./cp_compton.sh
./cp_xmodmap.sh
./cp_xresources.sh
./cp_openbox.sh
