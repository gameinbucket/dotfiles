#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"
echo "$(basename "$0")"

setxkbmap -option
xmodmap -e 'pointer = 3 2 1 4 5 6 7 8 9 10 11 12'
xmodmap ~/.Xmodmap
