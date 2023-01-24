# !/bin/bash
# Programa para ejemplificar el uso de la sentencia Case
# Author: Juan Manuel


opcion=""


echo "Ejemplo Sentencia Case"
read -p "Ingrese una opción de la A - Z: " opcion
echo -e "\n"

case $opcion in
    "A") echo -e "\nOperación guardar Archivo";;
    "B") echo -e "Operación eliminar Archivo";;
    [C-E]) echo "No esta implementada la operación";;
    "*") "Opcion Incorrecta"
esac
