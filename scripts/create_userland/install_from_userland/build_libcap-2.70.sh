#!/bin/bash

set -euo pipefail

cd /sources

tar xf libcap-2.70.tar.xz
pushd libcap-2.70

echo "Building libcap-2.70"

popd
rm -rf libcap-2.70
