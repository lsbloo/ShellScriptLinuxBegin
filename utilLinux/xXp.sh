#!/bin/bash

#conta=$((10*2))


if [ -z new_name ]; then
	echo 'null'
else
	mod=$(($mod+1))
	echo 'Nome atual da maquina'
	cat /etc/hostname
	#echo $mod
fi

