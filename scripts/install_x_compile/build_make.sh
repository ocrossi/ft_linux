#!/bin/bash

set -euo pipefail
cd /mnt/lfs/sources

tar xf make-4.4.1.tar.gz
pushd make-4.4.1

echo Building make-4.4.1
./configure --prefix=/usr   \
            --without-guile \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess)

make
make DESTDIR=$LFS install
popd
rm -rf make-4.4.1
