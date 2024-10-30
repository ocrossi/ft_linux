#!/bin/bash

# stop on any error
set -euo pipefail

config_file="/root/.zprofile"
file="/disk.img"
partition_blueprint="partitions.txt"
lfs_dir="/mnt/lfs"
output_file="out.txt"

function display_command() {
	echo -n "$1 ... "
	eval "$2"
	echo "OK"
	sleep 1
}

display_command 	"create file of size 20G filled with 0s " \
			'dd if=/dev/zero of=$file bs=1M count=20480 &>/dev/null'
display_command 	"find 1st free loopdevice & store it into a variable " \
			'free_loopdevice=`losetup -f`'
display_command 	"attach $file to loopdevice $free_loopdevice  " \
			'losetup $free_loopdevice $file'
display_command 	"confirm creation of loopdevice  " \
			'losetup $free_loopdevice &>/dev/null'
display_command		"partition the loopdevice file using $partition_blueprint  " \
			'cat $partition_blueprint | sfdisk $file &>$output_file'
display_command 	"unattach loop device" \
			'losetup -d $free_loopdevice'
display_command 	"reattach loop device while scanning for partitions" \
			'losetup -P $free_loopdevice $file'

home_part=$free_loopdevice"p2"
swap_part=$free_loopdevice"p3"

display_command		"make filesystem ext4 on home partition" \
			'mkfs -v -t ext4 $home_part &>$output_file'
display_command		"make swap partition on last partition " \
			'mkswap $swap_part &>$output_file'
display_command		"add $lfs_dir to zprofile" \
			'echo "export LFS=$lfs_dir" >> $config_file'
display_command		"create lfs dir" \
			'mkdir -pv $lfs_dir'
display_command 	"mount home part from loopfile to $lfs_dir" \
			'mount $home_part $lfs_dir'

echo toto > /mnt/lfs/tesst


# zprofile for reboot
display_command 	"adding loopdevice as environment to .zprofile file  " \
			'echo "export LOOPDEVICE=$free_loopdevice" >> $config_file'
display_command 	"add previous commands to $config_file" \
			'echo "losetup -P $free_loopdevice $file" >> $config_file'
display_command		"add mount lfs dir to zprofile" \
			'echo "mount $home_part $lfs_dir" >> $config_file'


