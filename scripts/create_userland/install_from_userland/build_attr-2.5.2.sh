#!/bin/bash

set -euo pipefail

cd /sources

tar xf attr-2.5.2.tar.gz
pushd attr-2.5.2

echo "Building attr-2.5.2"

popd
rm -rf attr-2.5.2
