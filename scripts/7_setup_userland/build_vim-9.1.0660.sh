#!/bin/bash

# set -euo pipefail

cd /sources

tar xf vim-9.1.0660.tar.gz
pushd vim-9.1.0660

echo "Building vim-9.1.0660"

echo '#define SYS_VIMRC_FILE "/etc/vimrc"' >> src/feature.h
./configure --prefix=/usr
make
chown -R tester .
su tester -c "TERM=xterm-256color LANG=en_US.UTF-8 make -j1 test" \
   &> vim-test.log
make install
ln -sv vim /usr/bin/vi
for L in  /usr/share/man/{,*/}man1/vim.1; do
    ln -sv vim.1 $(dirname $L)/vi.1
done

ln -sv ../vim/vim91/doc /usr/share/doc/vim-9.1.0660

cat > /etc/vimrc << "EOF"
" Début de /etc/vimrc

" Ensure defaults are set before customizing settings, not after
source $VIMRUNTIME/defaults.vim
let skip_defaults_vim=1

set nocompatible
set backspace=2
set mouse=a
syntax on
set nu
if (&term == "xterm") || (&term == "putty")
  set background=dark
endif

" Fin de /etc/vimrc
EOF


popd
rm -rf vim-9.1.0660
