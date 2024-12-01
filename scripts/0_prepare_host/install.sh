#!/bin/bash

apt-get update -yq && apt-get upgrade -yq

xargs apt-get install -yq < packages.txt

ln -sf bash /bin/sh

# some style plz
if [ $SHELL != "/usr/bin/zsh" ]
then
	chsh -s /usr/bin/zsh
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
	echo "already running zsh, we good"
fi
