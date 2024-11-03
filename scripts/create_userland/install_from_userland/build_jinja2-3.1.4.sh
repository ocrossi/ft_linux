#!/bin/bash

set -euo pipefail

cd /sources

tar xf jinja2-3.1.4.tar.gz
pushd jinja2-3.1.4

echo "Building jinja2-3.1.4"

popd
rm -rf jinja2-3.1.4
