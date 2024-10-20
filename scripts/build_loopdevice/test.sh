#!/bin/bash

function run_command() {
	echo $1
	eval "$2"
	echo "OK"
	sleep 1
}

run_command "hahahhaa" 'echo -e "wtf it works im a genius"'
