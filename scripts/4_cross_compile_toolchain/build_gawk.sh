#!/bin/bash

set -euo pipefail
cd /mnt/lfs/sources

tar xf gawk-5.3.0.tar.xz
pushd gawk-5.3.0

echo "Building gawk-5.3.0"

sed -i 's/extras//' Makefile.in
./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess)

make
make DESTDIR=$LFS install
popd 
rm -rf gawk-5.3.0
