#!/bin/bash

set -euo pipefail

cd /mnt/lfs/sources

tar xf binutils-2.43.1.tar.xz

pushd binutils-2.43.1

echo "Building binutils-2.43.1"

mkdir -v build
cd       build

../configure --prefix=$LFS/tools \
             --with-sysroot=$LFS \
             --target=$LFS_TGT   \
             --disable-nls       \
             --enable-gprofng=no \
             --disable-werror    \
             --enable-new-dtags  \
             --enable-default-hash-style=gnu

make
make install
