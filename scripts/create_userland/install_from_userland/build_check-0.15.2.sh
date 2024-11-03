#!/bin/bash

set -euo pipefail

cd /sources

tar xf check-0.15.2.tar.gz
pushd check-0.15.2

echo "Building check-0.15.2"

popd
rm -rf check-0.15.2
