#!/bin/bash -e
cd "$(dirname "$0")"

mkdir -p ~/.vscode/extensions/spaceduck

cp package.json ~/.vscode/extensions/spaceduck/.
cp -R themes ~/.vscode/extensions/spaceduck/.
