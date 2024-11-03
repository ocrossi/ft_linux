#!/bin/bash

set -euo pipefail

cd /sources

tar xf tcl8.6.14-src.tar.gz
pushd tcl8.6.14-src

echo "Building tcl8.6.14-src"

popd
rm -rf tcl8.6.14-src
