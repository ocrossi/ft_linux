#!/bin/bash

# stop on any error
set -eou pipefail

# minimal user file hierarchy
mkdir -pv $LFS/{etc,var} $LFS/usr/{bin,lib,sbin}

for i in bin lib sbin; do
  ln -sv usr/$i $LFS/$i
done

# check if using 64 bits arch & creates dir if yes
case $(uname -m) in
  x86_64) mkdir -pv $LFS/lib64 ;;
esac

# create dir for temp toolchain compilation 
mkdir -pv $LFS/tools
