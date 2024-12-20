#!/bin/bash

set -euo pipefail

cd /sources

tar xf sed-4.9.tar.xz
pushd sed-4.9

echo "Building sed-4.9"

./configure --prefix=/usr
make
make html
chown -R tester .
su tester -c "PATH=$PATH make check"
make install
install -d -m755           /usr/share/doc/sed-4.9
install -m644 doc/sed.html /usr/share/doc/sed-4.9



popd
rm -rf sed-4.9
