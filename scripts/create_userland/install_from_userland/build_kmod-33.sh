#!/bin/bash

# set -euo pipefail

cd /sources

tar xf kmod-33.tar.xz
pushd kmod-33

echo "Building kmod-33"

./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --with-openssl    \
            --with-xz         \
            --with-zstd       \
            --with-zlib       \
            --disable-manpages

make
make install

for target in depmod insmod modinfo modprobe rmmod; do
  ln -sfv ../bin/kmod /usr/sbin/$target
  rm -fv /usr/bin/$target
done




popd
rm -rf kmod-33
