#!/bin/bash

set -euo pipefail

cd /sources

tar xf elfutils-0.191.tar.bz2
pushd elfutils-0.191

echo "Building elfutils-0.191"

./configure --prefix=/usr                \
            --disable-debuginfod         \
            --enable-libdebuginfod=dummy
make
make check
make -C libelf install
install -vm644 config/libelf.pc /usr/lib/pkgconfig
rm /usr/lib/libelf.a

popd
rm -rf elfutils-0.191
