#!/bin/bash

set -euo pipefail

cd /sources

tar xf mpc-1.3.1.tar.gz
pushd mpc-1.3.1

echo "Building mpc-1.3.1"

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/mpc-1.3.1

make
make html
make check
make install
make install-html


popd
rm -rf mpc-1.3.1
