#!/bin/bash

set -euo pipefail

cd /sources

tar xf libffi-3.4.6.tar.gz
pushd libffi-3.4.6

echo "Building libffi-3.4.6"

./configure --prefix=/usr          \
            --disable-static       \
            --with-gcc-arch=native
make
make check
make install


popd
rm -rf libffi-3.4.6
