#!/bin/bash

set -euo pipefail

cd /sources

tar xf texinfo-7.1.tar.xz
pushd texinfo-7.1

echo "Building texinfo-7.1"

./configure --prefix=/usr

make
make check
make install

make TEXMF=/usr/share/texmf install-tex

pushd /usr/share/info
  rm -v dir
  for f in *
    do install-info $f dir 2>/dev/null
  done
popd

popd
rm -rf texinfo-7.1
