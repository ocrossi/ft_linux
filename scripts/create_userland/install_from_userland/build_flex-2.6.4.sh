#!/bin/bash

set -euo pipefail

cd /sources

tar xf flex-2.6.4.tar.gz
pushd flex-2.6.4

echo "Building flex-2.6.4"

popd
rm -rf flex-2.6.4
