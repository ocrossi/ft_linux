#!/bin/bash

set -euo pipefail

cd /sources

tar xf dejagnu-1.6.3.tar.gz
pushd dejagnu-1.6.3

echo "Building dejagnu-1.6.3"
mkdir -v build
pushd build

../configure --prefix=/usr
makeinfo --html --no-split -o doc/dejagnu.html ../doc/dejagnu.texi
makeinfo --plaintext       -o doc/dejagnu.txt  ../doc/dejagnu.texi
make check
make install
install -v -dm755  /usr/share/doc/dejagnu-1.6.3
install -v -m644   doc/dejagnu.{html,txt} /usr/share/doc/dejagnu-1.6.3

popd
popd
rm -rf dejagnu-1.6.3
