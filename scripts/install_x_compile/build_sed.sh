#!/bin/bash

set -eou pipefail
cd /mnt/lfs/sources

tar xf sed-4.9.tar.xz
pushd sed-4.9
echo Building sed-4.9

./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(./build-aux/config.guess)
make
make DESTDIR=$LFS install
