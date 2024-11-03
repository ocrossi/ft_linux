#!/bin/bash

set -euo pipefail

cd /sources

tar xf file-5.45.tar.gz
pushd file-5.45

echo "Building file-5.45"

popd
rm -rf file-5.45
