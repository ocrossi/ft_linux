#!/bin/bash

set -euo pipefail

cd /6_prepare_userland

sh install_getext.sh
sh install_bison.sh
sh install_perl.sh
sh install_python.sh
sh install_texinfo.sh
sh install_util-linux.sh
