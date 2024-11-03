#!/bin/bash

set -euo pipefail

cd /sources

tar xf vim-9.1.0660.tar.gz
pushd vim-9.1.0660

echo "Building vim-9.1.0660"

popd
rm -rf vim-9.1.0660
