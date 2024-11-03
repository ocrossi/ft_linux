#!/bin/bash

set -euo pipefail

cd /sources

tar xf gcc-14.2.0.tar.xz
pushd gcc-14.2.0

echo "Building gcc-14.2.0"

popd
rm -rf gcc-14.2.0
