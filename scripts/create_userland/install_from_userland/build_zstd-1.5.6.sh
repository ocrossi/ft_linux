#!/bin/bash

set -euo pipefail

cd /sources

tar xf zstd-1.5.6.tar.gz
pushd zstd-1.5.6

echo "Building zstd-1.5.6"

make prefix=/usr
make check
make prefix=/usr install
rm -v /usr/lib/libzstd.a

popd
rm -rf zstd-1.5.6
