# !/bin/bash
# Programa para ejemplificar el uso de los if anidados
# Author: Juan Manuel

notaClase=0
continua=""

echo "Ejemplo Sentencia IF-Else"
read -n1 -p "Indique cual es su nota (1-9): " notaClase
echo -e "\n"
if [ $notaClase -ge 7 ]; then
    echo "El alumno aprobó la materia"
    read -n1 -p "Va a continuar estudiando en el siguiente nivel? (s/n): " continua
    if [ $continua = "s" ]; then
        echo -e "\n"
        echo "Bienvenido al siguiente nivel"
    else
        echo -e "\n"
        echo "Gracias por trabajar con nosotros, mucha suerte"
    fi
else 
    echo "El alumno reprobó la materia"
fi

