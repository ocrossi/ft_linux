#!/bin/bash

set -euo pipefail

cd /sources

tar xf mpc-1.3.1.tar.gz
pushd mpc-1.3.1

echo "Building mpc-1.3.1"

popd
rm -rf mpc-1.3.1
