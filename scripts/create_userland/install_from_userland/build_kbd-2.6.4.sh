#!/bin/bash

set -euo pipefail

cd /sources

tar xf kbd-2.6.4.tar.xz
pushd kbd-2.6.4

echo "Building kbd-2.6.4"

patch -Np1 -i ../kbd-2.6.4-backspace-1.patch

sed -i '/RESIZECONS_PROGS=/s/yes/no/' configure
sed -i 's/resizecons.8 //' docs/man/man8/Makefile.in

./configure --prefix=/usr --disable-vlock

make
make check
make install

cp -R -v docs/doc -T /usr/share/doc/kbd-2.6.4

popd
rm -rf kbd-2.6.4
