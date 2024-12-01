#!/bin/bash

set -euo pipefail

cd /sources

tar xf man-db-2.12.1.tar.xz
pushd man-db-2.12.1

echo "Building man-db-2.12.1"

./configure --prefix=/usr                         \
            --docdir=/usr/share/doc/man-db-2.12.1 \
            --sysconfdir=/etc                     \
            --disable-setuid                      \
            --enable-cache-owner=bin              \
            --with-browser=/usr/bin/lynx          \
            --with-vgrind=/usr/bin/vgrind         \
            --with-grap=/usr/bin/grap

make
make check
make install



popd
rm -rf man-db-2.12.1
