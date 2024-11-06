#!/bin/bash

set -euo pipefail

cd /sources

tar xf libcap-2.70.tar.xz
pushd libcap-2.70

echo "Building libcap-2.70"

sed -i '/install -m.*STA/d' libcap/Makefile
make prefix=/usr lib=lib
make test
make prefix=/usr lib=lib install

popd
rm -rf libcap-2.70
