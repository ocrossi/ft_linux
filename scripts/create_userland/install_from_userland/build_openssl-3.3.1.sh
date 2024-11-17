#!/bin/bash

# there is a test that retunrs error and stop packet compilation
# set -euo pipefail

cd /sources

tar xf openssl-3.3.1.tar.gz
pushd openssl-3.3.1

echo "Building openssl-3.3.1"

./config --prefix=/usr         \
         --openssldir=/etc/ssl \
         --libdir=lib          \
         shared                \
         zlib-dynamic
make
HARNESS_JOBS=$(nproc) make test
sed -i '/INSTALL_LIBS/s/libcrypto.a libssl.a//' Makefile
make MANSUFFIX=ssl install
mv -v /usr/share/doc/openssl /usr/share/doc/openssl-3.3.1
cp -vfr doc/* /usr/share/doc/openssl-3.3.1


make install
popd
rm -rf openssl-3.3.1
