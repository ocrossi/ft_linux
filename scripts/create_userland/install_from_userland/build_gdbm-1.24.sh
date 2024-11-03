#!/bin/bash

set -euo pipefail

cd /sources

tar xf gdbm-1.24.tar.gz
pushd gdbm-1.24

echo "Building gdbm-1.24"

popd
rm -rf gdbm-1.24
