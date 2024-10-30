#!/bin/bash

set -euo pipefail
cd /mnt/lfs/sources

tar xf tar-1.35.tar.xz
pushd tar-1.35
echo Building tar-1.35

./configure --prefix=/usr                     \
            --host=$LFS_TGT                   \
            --build=$(build-aux/config.guess)

make
make DESTDIR=$LFS install
