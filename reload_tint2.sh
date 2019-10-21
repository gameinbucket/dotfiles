#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"
echo "$(basename "$0")"

./kill_tint2.sh
./cp_tint2.sh
./start_tint2.sh
