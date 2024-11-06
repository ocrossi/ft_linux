#!/bin/bash

set -euo pipefail

cd /sources

tar xf acl-2.3.2.tar.xz
pushd acl-2.3.2

echo "Building acl-2.3.2"

./configure --prefix=/usr         \
            --disable-static      \
            --docdir=/usr/share/doc/acl-2.3.2
make
make install


popd
rm -rf acl-2.3.2
