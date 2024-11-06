#!/bin/bash

set -euo pipefail

cd /sources

tar xf libxcrypt-4.4.36.tar.xz
pushd libxcrypt-4.4.36

echo "Building libxcrypt-4.4.36"

./configure --prefix=/usr                \
            --enable-hashes=strong,glibc \
            --enable-obsolete-api=no     \
            --disable-static             \
            --disable-failure-tokens

make
make check
make install


popd
rm -rf libxcrypt-4.4.36
