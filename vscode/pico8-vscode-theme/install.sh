#!/bin/bash
dir="$HOME/.vscode/extensions/pico8-theme"
mkdir -p "$dir"
cp package.json "$dir"/.
cp -r themes "$dir"/.
