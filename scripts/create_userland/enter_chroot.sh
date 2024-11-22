#!/bin/bash

set -euo pipefail

chroot "$LFS" /usr/bin/env -i   \
    HOME=/root                  \
    TERM="$TERM"                \
    PS1='(lfs chroot) \u:\w\$ ' \
    PATH=/usr/bin:/usr/sbin     \
    MAKEFLAGS="-j$(nproc)"      \
    TESTSUITEFLAGS="-j$(nproc)" \
    /bin/bash --login <<"EOT"
cd /create_userland && ls -l >/test
sh create_repertories_and_links.sh &&
sh build_toolchain_final.sh &>out_install.txt &&
sh cleanup.sh
cd /create_userland/install_from_userland && sh colonel_build.sh
EOT
