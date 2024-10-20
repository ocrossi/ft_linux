#!/bin/bash

# stop on any error
set -eou pipefail

file="disk.img"
partition_blueprint="partitions.txt"

function display_command() {
	echo -n $1
	eval "$2"
	echo "OK"
	sleep 1
}

display_command 	"create file of size 20G filled with 0s... " \
			'dd if=/dev/zero of=$file bs=1M count=20480 &>/dev/null'
display_command 	"find 1st free loopdevice & store it into a variable... " \
			'free_loopdevice=`losetup -f`'
display_command 	"attach $file to loopdevice $free_loopdevice ... " \
			'losetup $free_loopdevice $file'
display_command 	"confirm creation of loopdevice ... " \
			'losetup $free_loopdevice &>/dev/null'
display_command 	"adding loopdevice as environment to .zprofile file ... " \
			'echo "export LOOPDEVICE=$free_loopdevice" >> /root/.zprofile'
display_command 	"create GPT on $file file ... " \
			'parted -s $file mklabel gpt' 
display_command		"partition the loopdevice file using $partition_blueprint ... " \
			'sfdisk $file `< $partition_blueprint'
