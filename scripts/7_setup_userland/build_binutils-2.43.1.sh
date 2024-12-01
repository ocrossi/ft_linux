#!/bin/bash

#set -euo pipefail

cd /sources

tar xf binutils-2.43.1.tar.xz
pushd binutils-2.43.1

echo "Building binutils-2.43.1"

mkdir -v build
pushd       build

../configure --prefix=/usr       \
             --sysconfdir=/etc   \
             --enable-gold       \
             --enable-ld=default \
             --enable-plugins    \
             --enable-shared     \
             --disable-werror    \
             --enable-64-bit-bfd \
             --enable-new-dtags  \
             --with-system-zlib  \
             --enable-default-hash-style=gnu

make tooldir=/usr
make -k check
grep '^FAIL:' $(find -name '*.log')
make tooldir=/usr install
rm -fv /usr/lib/lib{bfd,ctf,ctf-nobfd,gprofng,opcodes,sframe}.a

popd
popd
rm -rf binutils-2.43.1
