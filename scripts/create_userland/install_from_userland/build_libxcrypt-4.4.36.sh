#!/bin/bash

set -euo pipefail

cd /sources

tar xf libxcrypt-4.4.36.tar.xz
pushd libxcrypt-4.4.36

echo "Building libxcrypt-4.4.36"

popd
rm -rf libxcrypt-4.4.36
