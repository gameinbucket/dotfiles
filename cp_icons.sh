#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"
echo "$(basename "$0")"

cp ./icons/* /usr/share/icons/hymn/.
