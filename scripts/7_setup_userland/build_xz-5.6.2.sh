#!/bin/bash

set -euo pipefail

cd /sources

tar xf xz-5.6.2.tar.xz
pushd xz-5.6.2

echo "Building xz-5.6.2"

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/xz-5.6.2

make
make check
make install

popd
rm -rf xz-5.6.2
