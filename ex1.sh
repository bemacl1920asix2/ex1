#!/bin/bash
clear
if (( EUID != 0 ))
then
	echo "Aquest script s'ha d'executar com usuari root"
	exit 1
fi
opc="s"
while [[ $opc = "s" ]]
do
	clear
	echo -n "Indica el nom d'usuari del sistema: "
	read usuari
	echo -n "Indica el nom d'un grup del sistema: "
	read grup
	sudo usermod -a -G $grup $usuari
	echo -n "Vols continuar?: "
	read opc
done
exit 10
