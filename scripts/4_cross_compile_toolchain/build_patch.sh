#!/bin/bash

set -euo pipefail
cd /mnt/lfs/sources

tar xf patch-2.7.6.tar.xz
pushd patch-2.7.6
echo Building patch-2.7.6

./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess)
make
make DESTDIR=$LFS install
popd
rm -rf patch-2.7.6
