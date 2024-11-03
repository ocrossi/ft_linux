#!/bin/bash

set -euo pipefail

cd /sources

tar xf tar-1.35.tar.xz
pushd tar-1.35

echo "Building tar-1.35"

popd
rm -rf tar-1.35
