#!/bin/bash

# set -euo pipefail

cd /sources

tar xf less-661.tar.gz
pushd less-661

echo "Building less-661"

./configure --prefix=/usr --sysconfdir=/etc
make
make check
make install

popd
rm -rf less-661
