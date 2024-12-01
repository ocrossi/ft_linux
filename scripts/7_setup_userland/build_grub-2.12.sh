#!/bin/bash

set -euo pipefail

cd /sources

tar xf grub-2.12.tar.xz
pushd grub-2.12

echo "Building grub-2.12"

unset {C,CPP,CXX,LD}FLAGS
echo depends bli part_gpt > grub-core/extra_deps.lst
./configure --prefix=/usr          \
            --sysconfdir=/etc      \
            --disable-efiemu       \
            --disable-werror
make
make install
mv -v /etc/bash_completion.d/grub /usr/share/bash-completion/completions

popd
rm -rf grub-2.12