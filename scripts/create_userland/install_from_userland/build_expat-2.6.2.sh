#!/bin/bash

set -euo pipefail

cd /sources

tar xf expat-2.6.2.tar.xz
pushd expat-2.6.2

echo "Building expat-2.6.2"

popd
rm -rf expat-2.6.2
