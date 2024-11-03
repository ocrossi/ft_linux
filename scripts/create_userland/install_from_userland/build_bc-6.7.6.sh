#!/bin/bash

set -euo pipefail

cd /sources

tar xf bc-6.7.6.tar.xz
pushd bc-6.7.6

echo "Building bc-6.7.6"

popd
rm -rf bc-6.7.6
