#!/bin/bash

set -euo pipefail
cd /mnt/lfs/sources

tar xf gcc-14.2.0.tar.xz

echo "Building libstdcpp"
pushd gcc-14.2.0
mkdir -v build
pushd    build
../libstdc++-v3/configure           \
    --host=$LFS_TGT                 \
    --build=$(../config.guess)      \
    --prefix=/usr                   \
    --disable-multilib              \
    --disable-nls                   \
    --disable-libstdcxx-pch         \
    --with-gxx-include-dir=/tools/$LFS_TGT/include/c++/14.2.0

make
make DESTDIR=$LFS install
popd
rm -v $LFS/usr/lib/lib{stdc++{,exp,fs},supc++}.la
popd
rm -rf gcc-14.2.0
