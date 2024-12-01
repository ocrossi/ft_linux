#!/bin/bash

set -euo pipefail

cd /sources

tar xf m4-1.4.19.tar.xz
pushd m4-1.4.19

echo "Building m4-1.4.19"

./configure --prefix=/usr
make
make check
make install

popd
rm -rf m4-1.4.19
