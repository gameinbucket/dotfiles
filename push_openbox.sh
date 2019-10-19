#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"
echo "$(basename "$0")"

cp ./openbox/* ~/.config/openbox/.
./openbox.sh
