#!/bin/bash
#Automatizador de Alias

#Command alias
echo 'Quantidade de Alias'
echo
read qntAlias

for((loop=0;loop<qntAlias;loop++)); do
	
	echo 'comando para alias'
	echo
	read comand
	
	echo
	echo 'abreviacao'
	read ler
	if [ -z $comand ]; then
		echo 'comando nullo'
	else
		alias $ler=$comand
		echo 'Alias criado'
		echo $ler
		echo $comand

	fi
	done

