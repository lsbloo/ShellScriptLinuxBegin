#!/bin/bash

#Script para condesacao de arquivos e compactacao com gzip e bzip2 
#Atualmente os mais usados por mim ! :|

cArqX(){

	echo 'Digite o diretorio do arquivo'
	read ler_dir
	echo
	echo 'Digite o nomeArquivo.tar'
	read nomearq
	
	if [ -z ler_dir -a -z nomearq]; then
		echo 'Caminho nulo e nomearquivo nulo'
	else
		tar cvf "$nomearq" "$ler_dir"
		#c = Cria o arquivo
		#v = mostra cada arquivo
		#f = especifica o caminho
		echo 'ok'
	fi
}
cArqY()
{
	echo 'Escolha a opcao [1] gzip ou [2] bzip2'
	read opcao_compact
	echo
	if [ $opcao -eq 1 ]; then
		echo 'Gzip'
		echo
		echo 'Digite o nome do arquivo que deseja compactar'
		read nomeArq
		if [ -z nomeArq ]; then
			echo 'Nome invalido'
		else
			gzip "$nomeArq"
			echo 'ok'
		fi
	fi

	if [ $opcao -eq 2 ]; then
		echo 'Bzip2'
		echo
		echo 'Digite o nome do arquivo que deseja compactar'
		read nomeArq
		
		if [ -z nomeArq ]; then
			echo 'nome invalido'
		else
			bzip2 "$nomeArq"
			echo 'ok'
		fi
	fi

		 
	
}

echo 'Bem vindo'
echo 
echo 'Digite [1] para condensar arquivos ou [2] para compactar arquivo'
read opcao
echo

if [ $opcao -eq 1 ]; then
        cArqX

elif [ $opcao -eq 2 ]; then
        cArqY

else
        echo 'Opcao errada'

fi

