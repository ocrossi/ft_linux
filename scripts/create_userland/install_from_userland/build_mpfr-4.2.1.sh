#!/bin/bash

set -euo pipefail

cd /sources

tar xf mpfr-4.2.1.tar.xz
pushd mpfr-4.2.1

echo "Building mpfr-4.2.1"

./configure --prefix=/usr        \
            --disable-static     \
            --enable-thread-safe \
            --docdir=/usr/share/doc/mpfr-4.2.1
make
make html

# check tests here
make check

make install
make install-html

popd
rm -rf mpfr-4.2.1
