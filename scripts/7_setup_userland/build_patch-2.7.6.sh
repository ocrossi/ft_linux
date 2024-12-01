#!/bin/bash

set -euo pipefail

cd /sources

tar xf patch-2.7.6.tar.xz
pushd patch-2.7.6

echo "Building patch-2.7.6"

./configure --prefix=/usr
make
make check
make install

popd
rm -rf patch-2.7.6
