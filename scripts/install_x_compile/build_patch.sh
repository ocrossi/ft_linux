#!/bin/bash

set -eou pipefail
cd /mnt/lfs/sources

tar xf patch-2.7.6.tar.xz
pushd patch-2.7.6
echo Building patch-2.7.6

./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess)
make
make DESTDIR=$LFS install
