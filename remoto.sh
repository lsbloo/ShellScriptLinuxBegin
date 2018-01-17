echo "" > $HOME/comando
echo "" > $HOME/aviso

for((loop=2;loop>1;loop++)); do

	sleep 60
	echo $loop

	COMANDO=$(cat %HOME/comando)

	if [ "$COMANDO"="vivo?" ]; then
		echo 'sim vivo'
		COMANDO=$S""
		echo > $HOME/comando
	fi

	if [ -n "$COMANDO" ]; then
		$COMANDO&
		echo > $HOME/comando

		echo "Executei"
	fi

	done
