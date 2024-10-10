FROM debian:bookworm

RUN apt-get update && apt-get upgrade

#&& apt-get install -yq zsh git neovim


RUN apt-get install -yq zsh git neovim curl\
	build-essential \
	# make gcc g++ libc6 dpkg
	ncurses-dev \
	# terminal & screen manipulation
	xz-utils \
	# xz command line for compressing & decompressing .xz files
	libssl-dev \
	# ssl lib & headers
	bc \
	# calculator
	flex \
	# Fast Lexical Analyzer Generator
	libelf-dev \
	# elf bins
	bison
	# general-purpose parser generator that converts an annotated context-free grammar into a C, C++
	
RUN apt-get install -yq gawk
RUN apt-get install texinfo -yq

RUN apt-get install -yq fdisk man

# oh my zsh cuz some style
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
RUN ln -sf bash /bin/sh # for version check 

WORKDIR /linux_kernel

# ADD ./linux-6.11.2/ .
