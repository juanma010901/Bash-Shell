#!/bin/bash
#Programa para ejemplificar el uso de la sentencia de iteración While Loop
#Author: Juan Manuel

numero=1

while [ $numero -ne 10 ]
do
    echo "Imprimiendo $numero veces"
    numero=$((numero + 1))
done
