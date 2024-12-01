#!/bin/bash

set -euo pipefail

cd /sources

tar xf gmp-6.3.0.tar.xz
pushd gmp-6.3.0

echo "Building gmp-6.3.0"
# care about this one
./configure --prefix=/usr    \
            --enable-cxx     \
            --disable-static \
            --docdir=/usr/share/doc/gmp-6.3.0

make
make html

# check tests here
make check 2>&1 | tee gmp-check-log
awk '/# PASS:/{total+=$3} ; END{print total}' gmp-check-log
make install
make install-html


popd
rm -rf gmp-6.3.0
