#!/bin/bash

set -euo pipefail

cd /sources

tar xf iana-etc-20240806.tar.gz
pushd iana-etc-20240806

echo "Building iana-etc-20240806"

popd
rm -rf iana-etc-20240806
