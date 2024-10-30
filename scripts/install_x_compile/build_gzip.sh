#!/bin/bash

set -euo pipefail
cd /mnt/lfs/sources

tar xf gzip-1.13.tar.xz
pushd gzip-1.13
echo Building gzip-1.13.tar.xz

./configure --prefix=/usr --host=$LFS_TGT
make
make DESTDIR=$LFS install
