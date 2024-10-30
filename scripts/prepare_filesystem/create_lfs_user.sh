#!/bin/bash

# stop on any error
set -euo pipefail

if [ -z $LFS ]; then
		echo "LFS env var is not defined, source /root/.zprofile"
		exit
	else
		echo "LFS env var exists, continuing ... "
		sleep 1
fi


# new group lfs & new user lfs inside lfs group  with home dir & no profile files import


tst=`getent group lfs`
if [ ! -z $tst ];then
	echo group lfs found
else
	echo group lfs not found, coninuing ...
	groupadd lfs
	useradd -s /bin/bash -g lfs -m -k /dev/null lfs
	echo "lfs:lfs" | chpasswd
fi

chown -v lfs $LFS/{usr{,/*},lib,var,etc,bin,sbin,tools}
case $(uname -m) in
  x86_64) chown -v lfs $LFS/lib64 ;;
esac

su - lfs
