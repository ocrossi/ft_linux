#!/bin/bash

set -eou pipefail
cd /mnt/lfs/sources

tar xf glibc-2.40.tar.xz
echo "Building glibc-2.40"

cd glibc-2.40

#link 64 bits libs
case $(uname -m) in
    i?86)   ln -sfv ld-linux.so.2 $LFS/lib/ld-lsb.so.3
    ;;
    x86_64) ln -sfv ../lib/ld-linux-x86-64.so.2 $LFS/lib64
            ln -sfv ../lib/ld-linux-x86-64.so.2 $LFS/lib64/ld-lsb-x86-64.so.3
    ;;
esac

#patch libc to install inside lfs directories
patch -Np1 -i ../glibc-2.40-fhs-1.patch

mkdir -v build
pushd    build

echo "rootsbindir=/usr/sbin" > configparms

../configure                             \
      --prefix=/usr                      \
      --host=$LFS_TGT                    \
      --build=$(../scripts/config.guess) \
      --enable-kernel=4.19               \
      --with-headers=$LFS/usr/include    \
      --disable-nscd                     \
      libc_cv_slibdir=/usr/lib

make
make DESTDIR=$LFS install

