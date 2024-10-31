#!/bin/bash

set -euo pipefail

#echo "Building loop device ... "
#pushd build_loopdevice
#	time sh create_loopdevice.sh
#popd
#echo "Done"
#
#echo "Downloads packages ... "
#pushd download_packages
#	time sh download_packages.sh  &>download_packages.txt
#popd
#echo "Done"
#
#echo "Prepare filesystem ... "
#pushd prepare_filesystem
#	sh create_fs.sh  &>>prepare_filesystem.txt
#	echo "==================================="
#	sh create_lfs_user.sh &>>prepare_filesystem.txt
#popd
#cp lfs_user_script/create_lfs_user_env.sh /
#echo "Done"
#
#echo "Prepare lfs user env ... "
#pushd prepare_filesystem
#	env -i HOME=/home/lfs TERM=$TERM  bash /create_lfs_user_env.sh
#popd
#echo "Done"
#
#echo "Install cross compile toolchain"
#pushd install_x_compile
#	# MAKEFLAGS specific to school vm care
#	mkdir -pv /mnt/lfs/sources/build_all
#	cp * /mnt/lfs/sources/build_all
#	env -i HOME=/home/lfs TERM=$TERM su lfs -c "cd /mnt/lfs/sources/build_all && 
#		source ~/.bashrc
#		printenv > /home/lfs/env.txt &&
#		source /home/lfs/.bashrc && 
#		time sh build_total.sh"
#	
#popd
#echo "Done"
#
#echo "Chroot possibilities"
#cp -rf create_userland /mnt/lfs/
#pushd part_chroot
#	sh chroot.sh
#	sh prepare_virtual_files_kernel.sh
#popd

echo "Create userland"
pushd create_userland
	sh enter_chroot.sh 
popd
