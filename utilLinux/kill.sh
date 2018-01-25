#!/bin/bash



remove()
{
	top
	echo
	echo
	echo

	echo 'Pid Processo'
	read pid
	if [ -z $pid ]; then
		echo 'pid nulo'
	else
		kill -9 "$pid"
		echo 'concluido !'
	fi

}

echo 'Digite s para remove processo ou n para cancel'
read chose

if [  "$chose"=="s" -a -n $chose ]; then
        remove
else
	echo 'cancelado!'
fi

