#!/bin/bash

set -euo pipefail

cd /sources

tar xf gettext-0.22.5.tar.xz
pushd gettext-0.22.5

echo "Building gettext-0.22.5"

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/gettext-0.22.5

make
make check
make install
chmod -v 0755 /usr/lib/preloadable_libintl.so


popd
rm -rf gettext-0.22.5
