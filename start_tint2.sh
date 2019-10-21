#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"
echo "$(basename "$0")"

tint2 -c ~/.config/tint2/hymn.tint2rc &
disown
