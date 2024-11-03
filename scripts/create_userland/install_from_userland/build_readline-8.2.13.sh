#!/bin/bash

set -euo pipefail

cd /sources

tar xf readline-8.2.13.tar.gz
pushd readline-8.2.13

echo "Building readline-8.2.13"

popd
rm -rf readline-8.2.13
