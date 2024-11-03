#!/bin/bash

set -euo pipefail

cd /sources

tar xf bash-5.2.32.tar.gz
pushd bash-5.2.32

echo "Building bash-5.2.32"

popd
rm -rf bash-5.2.32
