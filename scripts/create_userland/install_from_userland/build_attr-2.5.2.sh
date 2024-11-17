#!/bin/bash


# test erroir
#set -euo pipefail

cd /sources

tar xf attr-2.5.2.tar.gz
pushd attr-2.5.2

echo "Building attr-2.5.2"

./configure --prefix=/usr     \
            --disable-static  \
            --sysconfdir=/etc \
            --docdir=/usr/share/doc/attr-2.5.2

make
make check
make install

popd
rm -rf attr-2.5.2
