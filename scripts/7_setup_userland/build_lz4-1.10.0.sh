#!/bin/bash

set -euo pipefail

cd /sources

tar xf lz4-1.10.0.tar.gz
pushd lz4-1.10.0

echo "Building lz4-1.10.0"

make BUILD_STATIC=no PREFIX=/usr
make -j1 check
make BUILD_STATIC=no PREFIX=/usr install

popd
rm -rf lz4-1.10.0
