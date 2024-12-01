#!/bin/bash

set -euo pipefail

cd /sources

tar xf gdbm-1.24.tar.gz
pushd gdbm-1.24

echo "Building gdbm-1.24"

./configure --prefix=/usr    \
            --disable-static \
            --enable-libgdbm-compat

make
make check
make install



popd
rm -rf gdbm-1.24
