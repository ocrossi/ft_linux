#!/bin/bash

set -euo pipefail

cd /sources

tar xf check-0.15.2.tar.gz
pushd check-0.15.2

echo "Building check-0.15.2"

./configure --prefix=/usr --disable-static
make
make check
make docdir=/usr/share/doc/check-0.15.2 install

popd
rm -rf check-0.15.2
