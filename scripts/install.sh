#!/bin/bash

apt-get install -yq < packages.txt
ln -sf bash /bin/sh

# some style plz
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
