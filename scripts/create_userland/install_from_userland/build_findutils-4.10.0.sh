#!/bin/bash

set -euo pipefail

cd /sources

tar xf findutils-4.10.0.tar.xz
pushd findutils-4.10.0

echo "Building findutils-4.10.0"

./configure --prefix=/usr --localstatedir=/var/lib/locate
make
chown -R tester .
su tester -c "PATH=$PATH make check"
make install

popd
rm -rf findutils-4.10.0
