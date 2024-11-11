#!/bin/bash

set -euo pipefail

cd /sources

tar xf automake-1.17.tar.xz
pushd automake-1.17

echo "Building automake-1.17"

./configure --prefix=/usr --docdir=/usr/share/doc/automake-1.17
make
make -j$(($(nproc)>4?$(nproc):4)) check
make install


popd
rm -rf automake-1.17
