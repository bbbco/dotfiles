#!/bin/bash

DIRNAME=$(cd $(dirname $0) && pwd)

for dfile in $(ls -d1 .[^.]* | grep -v git); do

	if [ -e ~/${dfile} ]; then
		echo "Backing up ~/${dfile}"
		mv ~/${dfile} ~/${dfile}.bkup
	fi
	echo "Linking ${dfile} to ~/${dfile}"
	ln -s ${DIRNAME}/${dfile} ~/${dfile}

done
