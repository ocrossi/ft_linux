#!/bin/bash

set -euo pipefail

cd /sources

tar xf bison-3.8.2.tar.xz
pushd bison-3.8.2

echo "Building bison-3.8.2"

./configure --prefix=/usr --docdir=/usr/share/doc/bison-3.8.2

make
make check
make install


popd
rm -rf bison-3.8.2
