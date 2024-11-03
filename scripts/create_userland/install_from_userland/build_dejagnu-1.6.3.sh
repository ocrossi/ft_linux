#!/bin/bash

set -euo pipefail

cd /sources

tar xf dejagnu-1.6.3.tar.gz
pushd dejagnu-1.6.3

echo "Building dejagnu-1.6.3"

popd
rm -rf dejagnu-1.6.3
