#!/bin/bash

set -euo pipefail

cd /sources

tar xf texinfo-7.1.tar.xz
pushd texinfo-7.1

echo "Building texinfo-7.1"

popd
rm -rf texinfo-7.1
