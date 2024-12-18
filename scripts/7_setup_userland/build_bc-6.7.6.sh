#!/bin/bash

set -euo pipefail

cd /sources

tar xf bc-6.7.6.tar.xz
pushd bc-6.7.6

echo "Building bc-6.7.6"

CC=gcc ./configure --prefix=/usr -G -O3 -r
make
make test
make install


popd
rm -rf bc-6.7.6
