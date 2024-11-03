#!/bin/bash

set -euo pipefail

cd /sources

tar xf expect5.45.4.tar.gz
pushd expect5.45.4

echo "Building expect5.45.4"

popd
rm -rf expect5.45.4
