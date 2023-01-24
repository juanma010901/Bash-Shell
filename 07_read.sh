# !/bin/bash
# Programa para ejemplificar como capturar información del usuario utilizando el comando read

option=0
backupName=""

echo "Programa Utilidades Postgres"
read -p "Utilizar una opción:" option
read -p "Ingresar el nombre del archivo del backup:" backupName
echo "Opción: $option, BackupName: $backupName"
