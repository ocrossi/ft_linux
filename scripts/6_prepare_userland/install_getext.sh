#!/bin/bash

set -euo pipefail
cd /sources

tar -xf gettext-0.22.5.tar.xz
pushd gettext-0.22.5
echo Building gettext-0.22.5

./configure --disable-shared
make
cp -v gettext-tools/src/{msgfmt,msgmerge,xgettext} /usr/bin

popd
rm -rf gettext-0.22.5
