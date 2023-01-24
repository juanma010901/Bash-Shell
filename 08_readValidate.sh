# !/bin/bash
# Programa para ejemplificar como capturar la información del usuario y validarla

option=0
backupName=""
clave=""

echo "Programa Utilidades Postgres"
# Acepta el ingrso de información de sólo un caracter0
read -n1 -p "Utilizar una opción: " option
echo -e "\n"
read -n10 -p "Ingresar el nombre del archivo del backup: " backupName
echo -e "\n"
echo "Opción: $option, BackupName: $backupName"
read -s -p "Clave: " clave
echo "Clave: $clave"
