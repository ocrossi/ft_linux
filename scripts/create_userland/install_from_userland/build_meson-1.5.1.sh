#!/bin/bash

set -euo pipefail

cd /sources

tar xf meson-1.5.1.tar.gz
pushd meson-1.5.1

echo "Building meson-1.5.1"

pip3 wheel -w dist --no-cache-dir --no-build-isolation --no-deps $PWD
pip3 install --no-index --find-links dist meson
install -vDm644 data/shell-completions/bash/meson /usr/share/bash-completion/completions/meson
install -vDm644 data/shell-completions/zsh/_meson /usr/share/zsh/site-functions/_meson


popd
rm -rf meson-1.5.1
