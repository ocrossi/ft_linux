#!/bin/bash

set -euo pipefail

cd /sources

tar xf gawk-5.3.0.tar.xz
pushd gawk-5.3.0

echo "Building gawk-5.3.0"

popd
rm -rf gawk-5.3.0
