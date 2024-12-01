#!/bin/bash

# set -euo pipefail

cd /sources

tar xf libtool-2.4.7.tar.xz
pushd libtool-2.4.7

echo "Building libtool-2.4.7"

./configure --prefix=/usr
make
make -k check
make install
rm -fv /usr/lib/libltdl.a

popd
rm -rf libtool-2.4.7
