FROM debian:bookworm

RUN apt-get update && apt-get upgrade

#&& apt-get install -yq zsh git neovim


RUN apt-get install -yq zsh git neovim\
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

WORKDIR /linux_kernel

# ADD ./linux-6.11.2/ .	
