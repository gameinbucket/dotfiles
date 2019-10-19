#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"
echo "$(basename "$0")"


cp ./colorschemes/* ~/.config/colorschemes/.
cp ./themes/* ~/.themes/.
cp ./tint2/* ~/.config/tint2/.
cp ./fonts/* ~/.fonts/.
cp ./rofi/* ~/.config/rofi/.

./push_openbox.sh
./push_xmodmap.sh
./push_xresources.sh
