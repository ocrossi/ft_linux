#!/bin/bash

set -euo pipefail

cd /sources

tar xf jinja2-3.1.4.tar.gz
pushd jinja2-3.1.4

echo "Building jinja2-3.1.4"

pip3 wheel -w dist --no-cache-dir --no-build-isolation --no-deps $PWD
pip3 install --no-index --no-user --find-links dist Jinja2

popd
rm -rf jinja2-3.1.4
