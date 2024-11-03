#!/bin/bash

set -euo pipefail

cd /sources

tar xf ncurses-6.5.tar.gz
pushd ncurses-6.5

echo "Building ncurses-6.5"

popd
rm -rf ncurses-6.5
