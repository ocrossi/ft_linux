#!/bin/bash

set -euo pipefail

cd /sources

tar xf autoconf-2.72.tar.xz
pushd autoconf-2.72

echo "Building autoconf-2.72"

popd
rm -rf autoconf-2.72
