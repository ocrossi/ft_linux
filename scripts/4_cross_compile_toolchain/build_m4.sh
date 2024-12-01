#!/bin/bash

set -euo pipefail
cd /mnt/lfs/sources

tar xf m4-1.4.19.tar.xz

echo "Building m4-1.4.19"
pushd m4-1.4.19

./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess)

make
make DESTDIR=$LFS install
popd
rm -rf m4-1.4.19
