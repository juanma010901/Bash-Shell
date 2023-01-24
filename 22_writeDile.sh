# ! /bin/bash
# Programa para ejemplificar cómo se escribe en un archivo
# Autor: Juan Manuel

echo "Escribir en un archivo"

#Lo que envien en archivo numero 2 se agregará al archivo número 1
echo "Valores escritos con el comando echo" >> $1

#Adición multilinea
cat << EOM >> $1
$2
EOM
