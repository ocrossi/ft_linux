#!/bin/bash

set -euo pipefail

cd /sources

tar xf libpipeline-1.5.7.tar.gz
pushd libpipeline-1.5.7

echo "Building libpipeline-1.5.7"

popd
rm -rf libpipeline-1.5.7
