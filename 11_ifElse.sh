# !/bin/bash
# Programa para ejemplificar el uso de la sentencia de decisión if, else
# Author: Juan Manuel

notaClase=0
edad=0

echo "Ejemplo Sentencia IF-Else"
read -n1 -p "Indique cual es su nota (1-9): " notaClase
echo -e "\n"
if [ $notaClase >= 7 ]; then
    echo "El alumno aprobó la materia"
else 
    echo "El alumno reprobó la materia"
fi

read -p "Ingrese su edad: " edad
echo -e "\n"
if (( $edad -le 18 )); then
    echo "La persona no puede votar"
else
    echo "La persona si puede votar"
fi
