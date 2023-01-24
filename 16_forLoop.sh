#!/bin/bash
#Programa para ejemplificar el uso de la sentencia de iteración For
#Author: Juan Manuel

arregloNumeros=(1 2 3 4 5 6)

echo "Iterar en la lista de Números"
for num in ${arregloNumeros[*]}
do 
    echo "Número: $num"
done

echo "Iterar en la lista de Cadenas"
for nom in "Marco" "Pedro" "Luis" "Daniela"
do
    echo "Nombre: $nom"
done

echo "Iterar en Archivos"
for fil in *
do
    echo "Archivo: $fil"
done

echo "Iterar utilizando un comando"
for fil in $(ls)
do
    echo "Resultado del comando: $fil"
done

echo "Iterar utilziando el formato tradicional"
for ((i=1;i<10;i++))
do
    echo "Número: $i"
done

