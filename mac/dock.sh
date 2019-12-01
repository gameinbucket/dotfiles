#!/bin/bash -e

if [ "$1" = "-f" ]; then
  defaults write com.apple.dock autohide-delay -int 0
elif [ "$1" = "-d" ]; then
  defaults delete com.apple.dock autohide-delay
else
  echo "-f for fast dock or -d for default"
  exit 1
fi

killall Dock
