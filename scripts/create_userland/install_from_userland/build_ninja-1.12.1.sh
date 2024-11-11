#!/bin/bash

set -euo pipefail

cd /sources

tar xf ninja-1.12.1.tar.gz
pushd ninja-1.12.1

echo "Building ninja-1.12.1"

export NINJAJOBS=4
sed -i '/int Guess/a \
  int   j = 0;\
  char* jobs = getenv( "NINJAJOBS" );\
  if ( jobs != NULL ) j = atoi( jobs );\
  if ( j > 0 ) return j;\
' src/ninja.cc

python3 configure.py --bootstrap
install -vm755 ninja /usr/bin/
install -vDm644 misc/bash-completion /usr/share/bash-completion/completions/ninja
install -vDm644 misc/zsh-completion  /usr/share/zsh/site-functions/_ninja

popd
rm -rf ninja-1.12.1
