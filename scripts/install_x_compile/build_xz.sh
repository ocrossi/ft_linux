#!/bin/bash

set -euo pipefail
cd /mnt/lfs/sources

tar xf xz-5.6.2.tar.xz 
pushd xz-5.6.2
echo Buildidng xz-5.6.2

./configure --prefix=/usr                     \
            --host=$LFS_TGT                   \
            --build=$(build-aux/config.guess) \
            --disable-static                  \
            --docdir=/usr/share/doc/xz-5.6.2
make
make DESTDIR=$LFS install
rm -v $LFS/usr/lib/liblzma.la
