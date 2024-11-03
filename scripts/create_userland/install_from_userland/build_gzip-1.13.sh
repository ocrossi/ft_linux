#!/bin/bash

set -euo pipefail

cd /sources

tar xf gzip-1.13.tar.xz
pushd gzip-1.13

echo "Building gzip-1.13"

popd
rm -rf gzip-1.13
