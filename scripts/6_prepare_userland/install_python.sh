#!/bin/bash

set -euo pipefail
cd /sources

tar -xf Python-3.12.5.tar.xz
pushd Python-3.12.5
echo Building Python-3.12.5

./configure --prefix=/usr   \
            --enable-shared \
            --without-ensurepip
make
make install

popd
rm -rf Python-3.12.5
