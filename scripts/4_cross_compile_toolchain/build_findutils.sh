#!/bin/bash

set -euo pipefail
cd /mnt/lfs/sources

tar xf findutils-4.10.0.tar.xz
pushd findutils-4.10.0
echo "Building findutils-4.10.0"

./configure --prefix=/usr                   \
            --localstatedir=/var/lib/locate \
            --host=$LFS_TGT                 \
            --build=$(build-aux/config.guess)

make
make DESTDIR=$LFS install
popd
rm -rf findutils-4.10.0
