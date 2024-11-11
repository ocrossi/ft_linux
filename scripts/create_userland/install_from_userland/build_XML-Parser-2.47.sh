#!/bin/bash

set -euo pipefail

cd /sources

tar xf XML-Parser-2.47.tar.gz
pushd XML-Parser-2.47

echo "Building XML-Parser-2.47"

perl Makefile.PL
make
make test
make install


popd
rm -rf XML-Parser-2.47
