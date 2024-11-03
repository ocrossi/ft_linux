#!/bin/bash

set -euo pipefail

cd /sources

tar xf flit_core-3.9.0.tar.gz
pushd flit_core-3.9.0

echo "Building flit_core-3.9.0"

popd
rm -rf flit_core-3.9.0
