#!/bin/bash

set -euo pipefail

cd /sources

tar xf binutils-2.43.1.tar.xz
pushd binutils-2.43.1

echo "Building binutils-2.43.1"

popd
rm -rf binutils-2.43.1
