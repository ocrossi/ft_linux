#!/bin/bash

set -euo pipefail

cd /sources

tar xf pkgconf-2.3.0.tar.xz
pushd pkgconf-2.3.0

echo "Building pkgconf-2.3.0"

popd
rm -rf pkgconf-2.3.0
