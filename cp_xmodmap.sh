#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"
echo "$(basename "$0")"

# sudo echo \
# 'Section "InputClass"
#         Identifier   "Marble Mouse"
#         MatchProduct "Logitech USB Trackball"
#         Driver       "libinput"
#         Option       "ScrollMethod"    "button"
#         Option       "ScrollButton"    "8"
#         Option       "MiddleEmulation" "true"
# EndSection' \
# >> /usr/share/X11/xorg.conf.d/40-libinput.conf
# xmodmap -e 'pointer = 1 0 3 4 5 6 7 8 2 10 11 12'

cp ./home/.Xmodmap ~/.
