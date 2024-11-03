#!/bin/bash

set -euo pipefail

cd /sources

tar xf procps-ng-4.0.4.tar.xz
pushd procps-ng-4.0.4

echo "Building procps-ng-4.0.4"

popd
rm -rf procps-ng-4.0.4
