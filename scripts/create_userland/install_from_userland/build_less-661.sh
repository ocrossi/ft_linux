#!/bin/bash

set -euo pipefail

cd /sources

tar xf less-661.tar.gz
pushd less-661

echo "Building less-661"

popd
rm -rf less-661
