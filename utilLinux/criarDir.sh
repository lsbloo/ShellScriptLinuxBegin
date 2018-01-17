#!/bin/bash

echo 'Digite o nome do diretorio'
echo
read nome_diretorio

echo 'Digite o caminho do diretorio'
echo
read caminho_diretorio

if [ -z $nome_diretorio -a -z $caminho_diretorio ]; then
	echo 'Erro campo nao digitado'
#Se o valor da variavel nome e o valor da variavel caminho for nula entao da ero

else
#Senao ele cria o diretorio no caminho especificado
	mkdir "$caminho_diretorio/$nome_diretorio"
fi

