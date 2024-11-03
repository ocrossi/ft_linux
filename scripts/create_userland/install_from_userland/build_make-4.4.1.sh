#!/bin/bash

set -euo pipefail

cd /sources

tar xf make-4.4.1.tar.gz
pushd make-4.4.1

echo "Building make-4.4.1"

popd
rm -rf make-4.4.1
