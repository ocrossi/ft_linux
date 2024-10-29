#!/bin/bash

set -eou pipefail
cd /mnt/lfs/sources

tar xf bash-5.2.32.tar.gz
pushd bash-5.2.32
echo "Building bash-5.2.32"

./configure --prefix=/usr                      \
            --build=$(sh support/config.guess) \
            --host=$LFS_TGT                    \
            --without-bash-malloc              \
            bash_cv_strtold_broken=no

make
make DESTDIR=$LFS install
ln -sv bash $LFS/bin/sh
