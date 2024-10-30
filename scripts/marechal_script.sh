#!/bin/bash

set -euo pipefail

echo "Building loop device ... "
pushd build_loopdevice
	time sh create_loopdevice.sh
popd
echo "Done"

echo "Downloads packages ... "
pushd download_packages
	time sh download_packages.sh  &>download_packages.txt
popd
echo "Done"

echo "Prepare filesystem ... "
pushd prepare_filesystem
	sh create_fs.sh  &>>prepare_filesystem.txt
	echo "==================================="
	sh create_lfs_user.sh &>>prepare_filesystem.txt
popd
cp lfs_user_script/create_lfs_user_env.sh /
echo "Done"

echo "Prepare lfs user env ... "
pushd prepare_filesystem
	su -l lfs -c "sh /create_lfs_user_env.sh"
popd
echo "Done"

#echo "Install cross compile toolchain"
#pushd install_x_compile
#	# MAKEFLAGS specific to school vm care
#	mkdir /mnt/lfs/sources/build_all
#	cp * /mnt/lfs/sources/build_all
#	chmod 1777 /mnt/lfs/sources/build_all/*
#	su -l lfs -c "cd /mnt/lfs/sources/build_all && 
#		export MAKEFLAGS=-j12 &&
#		printenv > /home/lfs/out5.txt &&
#		time sh build_total.sh" lfs
#	
#popd
#echo "Done"

#echo "Chroot possibilities"
#pushd part_chroot
#	sh chroot.sh
#	sh prepare_virtual_files_kernel.sh
#	sh enter_chroot.sh
#popd
