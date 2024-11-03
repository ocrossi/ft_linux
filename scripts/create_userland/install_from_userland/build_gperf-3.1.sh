#!/bin/bash

set -euo pipefail

cd /sources

tar xf gperf-3.1.tar.gz
pushd gperf-3.1

echo "Building gperf-3.1"

popd
rm -rf gperf-3.1
