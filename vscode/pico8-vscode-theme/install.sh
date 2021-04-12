#!/bin/bash
cd "$(dirname "$0")"

mkdir -p ~/.vscode/extensions/pico8-theme

cp package.json ~/.vscode/extensions/pico8-theme/.
cp -R themes ~/.vscode/extensions/pico8-theme/.
