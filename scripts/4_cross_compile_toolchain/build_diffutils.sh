#!/bin/bash

set -euo pipefail
cd /mnt/lfs/sources

tar xf diffutils-3.10.tar.xz
pushd diffutils-3.10

./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(./build-aux/config.guess)
make
make DESTDIR=$LFS install
popd
rm -rf diffutils-3.10
