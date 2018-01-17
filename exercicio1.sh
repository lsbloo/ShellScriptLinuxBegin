echo 'Bem vindo Usuario'
echo
echo

echo 'Porfavor digite a opcao do turno'
echo
echo '[1] Manha'
echo '[2] Tarde'
echo '[3] Noite'
echo

read turno

if [ $turno='1' ]; then
echo 'Camila pode atender na parte da manha'
elif [ $turno='2']; then
echo 'Joao pode atender na parte da tarde'
else
echo 'Marcos pode atender na parte da noite'
fi

