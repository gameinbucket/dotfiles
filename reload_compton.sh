#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"
echo "$(basename "$0")"

./kill_compton.sh
./cp_compton.sh
./start_compton.sh
