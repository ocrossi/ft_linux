#!/bin/bash

set -euo pipefail

cd /sources

tar xf openssl-3.3.1.tar.gz
pushd openssl-3.3.1

echo "Building openssl-3.3.1"

popd
rm -rf openssl-3.3.1
