#!/bin/bash

set -euo pipefail

cd /sources

tar xf make-4.4.1.tar.gz
pushd make-4.4.1

echo "Building make-4.4.1"

./configure --prefix=/usr
make
chown -R tester .
su tester -c "PATH=$PATH make check"
make install

popd
rm -rf make-4.4.1
