#!/bin/bash

set -euo pipefail
cd /mnt/lfs/sources

tar xf binutils-2.43.1.tar.xz  
pushd binutils-2.43.1
echo Building binutils-2.43.1

sed '6009s/$add_dir//' -i ltmain.sh
mkdir -v build
cd       build
../configure                   \
    --prefix=/usr              \
    --build=$(../config.guess) \
    --host=$LFS_TGT            \
    --disable-nls              \
    --enable-shared            \
    --enable-gprofng=no        \
    --disable-werror           \
    --enable-64-bit-bfd        \
    --enable-new-dtags         \
    --enable-default-hash-style=gnu

make
make DESTDIR=$LFS install
rm -v $LFS/usr/lib/lib{bfd,ctf,ctf-nobfd,opcodes,sframe}.{a,la}
popd
rm -rf binutils-2.43.1
