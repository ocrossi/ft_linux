#!/bin/bash

set -euo pipefail

cd /sources

tar xf ninja-1.12.1.tar.gz
pushd ninja-1.12.1

echo "Building ninja-1.12.1"

popd
rm -rf ninja-1.12.1
