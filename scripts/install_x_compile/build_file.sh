#!/bin/bash

set -euo pipefail
cd /mnt/lfs/sources

tar xf file-5.45.tar.gz
pushd file-5.45
echo "Building file-5.45"

mkdir build
pushd build
  ../configure --disable-bzlib      \
               --disable-libseccomp \
               --disable-xzlib      \
               --disable-zlib
  make
popd

./configure --prefix=/usr --host=$LFS_TGT --build=$(./config.guess)
make FILE_COMPILE=$(pwd)/build/src/file
make DESTDIR=$LFS install
rm -v $LFS/usr/lib/libmagic.la
