#!/bin/bash

cadastrar(){
	echo 'Digite seu cpf'
	read cpf
	echo 'Digite seu nome novamente'
	read nome
	echo 'Digite sua idade'
	read idade
	
	dados=($cpf $nome $idade)	
	#echo ${dados[*]}
	echo 'Cpf:' ${dados[0]}
	echo 'Nome:' ${dados[1]}
	echo 'Idade:' ${dados[2]}

	echo 'Cadastrado'
	echo
	echo 'Digite [1] se deseja realizar compra'
	read opcao
	if [ $opcao -eq 1 ]; then
		echo 'ok'
		
		echo 'Digite seu cpf novamente'
		read cpf_f
		while [ $cpf -ne $cpf_f ]; do
			echo 'Digite seu cpf novamente'
			read cpf_f
		done

		echo 'compra realizada'
	else
		echo 'fim programa'
	fi
}


$1

if [ -z $1 ]; then

	echo 'Digite o nome para acessar'
else
	echo 'Bem vindo '$1
	cadastrar
	
fi

