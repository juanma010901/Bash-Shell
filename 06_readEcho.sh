# !/bin/bash
# Programa para revisar los tipos de operadores
# Autor: Juan Manuel

# !/bin/bash
# Programa para ejemplificar como capturar información del usuario utilizando el comando echo, read y $REPLY

option=0
backupName=""

echo "Programa Utilidades Postgres"
echo -n "Utilizar una opción:"
read
option=$REPLY
echo -n "Ingresar el nombre del archivo del backup:"
read
backupName=$REPLY
echo "Opción: $option, BackupName: $backupName"
