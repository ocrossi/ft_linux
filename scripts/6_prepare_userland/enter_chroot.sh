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
cd /6_prepare_userland &&
sh create_repertories_and_links.sh &&
sh build_toolchain_final.sh &>out_install.txt &&
sh cleanup.sh
EOT
