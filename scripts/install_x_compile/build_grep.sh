#!/bin/bash

set -euo pipefail
cd /mnt/lfs/sources

tar xf grep-3.11.tar.xz
pushd grep-3.11
echo Buidling grep-3.11
./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(./build-aux/config.guess)
make
make DESTDIR=$LFS install
