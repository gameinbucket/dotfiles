#!/bin/bash -e
cd "$(dirname "$0")"

mkdir -p ~/.vscode/extensions/my-theme

cp package.json ~/.vscode/extensions/my-theme/.
cp -R themes ~/.vscode/extensions/my-theme/.
