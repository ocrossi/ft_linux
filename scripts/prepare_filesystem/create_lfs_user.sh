#!/bin/bash

# stop on any error
set -eou pipefail

if [ -z $LFS ]; then
		echo "LFS env var is not defined, source /root/.zprofile"
		return
	else
		echo "LFS env var exists, continuing ... "
		sleep 1
fi


# new group lfs & new user lfs inside lfs group  with home dir & no profile files import
groupadd lfs
useradd -s /bin/bash -g lfs -m -k /dev/null lfs

echo "lfs:lfs" | chpasswd

chown -v lfs $LFS/{usr{,/*},lib,var,etc,bin,sbin,tools}
case $(uname -m) in
  x86_64) chown -v lfs $LFS/lib64 ;;
esac

su - lfs
