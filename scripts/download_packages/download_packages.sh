#!/bin/bash

# stop on any error
set -euo pipefail

if [ -z ${LFS}]; then
		echo "LFS env var is not defined, source /root/.zprofile"
		return
	else
		echo "LFS env var exists, continuing ... "
		sleep 1
fi

# create source dir to contain packages to install for x compile toolchain
mkdir -v $LFS/sources
chmod -v a+wt $LFS/sources

# add packages & corrections to sources dur
wget --input-file=lfs_packages.txt --continue --directory-prefix=$LFS/sources


# install mdsums file &  check mdsums packages

#pushd $LFS/sources
#	wget https://fr.linuxfromscratch.org/view/lfs-systemd-stable/md5sums
#	md5sum -c md5sums
#popd

