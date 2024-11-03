#!/bin/bash

set -euo pipefail

cd /sources

tar xf zlib-1.3.1.tar.gz
pushd zlib-1.3.1

echo "Building zlib-1.3.1"

popd
rm -rf zlib-1.3.1
