#!/bin/bash

set -euo pipefail

cd /sources

tar xf psmisc-23.7.tar.xz
pushd psmisc-23.7

echo "Building psmisc-23.7"

./configure --prefix=/usr
make 
make check
make install


popd
rm -rf psmisc-23.7
