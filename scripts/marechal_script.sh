#!/bin/bash

set -euo pipefail

echo "Building loop device ... "
pushd build_loopdevice
	time sh create_loopdevice.sh
popd
echo "Done"

echo "Installing packages ... "
pushd install_packages
	time sh install_packages.sh  &>install_packages.txt
popd
echo "Done"

echo "Prepare filesystem ... "
pushd prepare_filesystem
	sh create_fs.sh  &>prepare_filesystem.txt
	sh create_lfs_user.sh
	cp ./lfs_user/script/create_user_env.sh /
popd
echo "Done"

echo "Prepare lfs user env ... "
pushd prepare_filesystem
	sh /create_lfs_user_env.sh
popd
echo "Done"

#echo "Install cross compile toolchain"
#pushd install_x_compile
#	export MAKEFLAGS=-j12 # specific to school vm care
#	time sh build_total.sh 
#popd
#echo "Done"
#
#echo "Chroot possibilities"
#pushd part_chroot
#	sh chroot.sh
#	sh prepare_virtual_files_kernel.sh
#	sh enter_chroot.sh
#popd
