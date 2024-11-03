#!/bin/bash

set -euo pipefail

cd /sources

tar xf automake-1.17.tar.xz
pushd automake-1.17

echo "Building automake-1.17"

popd
rm -rf automake-1.17
