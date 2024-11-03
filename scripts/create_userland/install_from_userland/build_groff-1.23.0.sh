#!/bin/bash

set -euo pipefail

cd /sources

tar xf groff-1.23.0.tar.gz
pushd groff-1.23.0

echo "Building groff-1.23.0"

popd
rm -rf groff-1.23.0
