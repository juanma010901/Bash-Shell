# !/bin/bash
# Programa para ejemplificar el uso de expresiones condicionales
# Author: Juan Manuel

edad=0
pais=""
pathArchivo=""

read -p "Ingrese su edad: " edad
read -p "Ingrese su pais: " pais
read -p "Ingrese el path de su archivo: " pathArchivo

echo -e "\nExpresiones condicionales con números"
if [ $edad -lt 10 ]; then
    echo "La persona es un niñ@"
elif [ $edad -ge 10 ] && [ $edad -le 17 ]; then
    echo "La persona se trata de un adolescente"
else
    echo "La persona es mayor de edad"
fi


echo -e "\nExpresiones condicionales con cadenas"
if [ $pais = "EE" ]; then
    echo "La persona es un Americana"
elif [ $pais = "EC" ] || [ $pais = "COL" ]; then
    echo "La persona es Suramericana"
else
    echo "Se desconoce la nacionalidad"
fi



echo -e "\nExpresiones condicionales con archivos"
if [ -d $pathArchivo ]; then
    echo "El directorio $pathArchivo existe"
else
    echo "El directorio $pathArchivo no existe"
