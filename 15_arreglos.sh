#!/bin/bash
#Programa para ejemplificar el uso de los arreglos
#Author: Juan Manuel

arregloNumeros=(1 2 3 4 5 6)
arregloCadenas=(Juan, Manuel, Antonio, Pedro, Pablo)
arregloRangos=({A..Z} {10..20})

#Imprimir todos los valores
echo "Arreglo de Números: ${arregloNumeros[*]}"

echo "Arreglo de Cadenas: ${arregloCadenas[*]}"

echo "Arreglo de Rangos: ${arregloRangos[*]}"

#Imprimir los tamaños de los arreglos
echo "Tamaño arreglo de Números: ${#arregloNumeros[*]}"
echo "Tamaño arreglo de Cadenas: ${#arregloCadenas[*]}"
echo "Tamaño arreglo de Rangos: ${#arregloRangos[*]}"

#Imprimir la posición 3 del arreglo de Números, Cadenas y Rangos
echo "Posición 3 arreglo de Números: ${arregloNumeros[3]}"
echo "Posición 3 arreglo de Cadenas: ${arregloCadenas[3]}"
echo "Posición 3 arreglo de Rangos: ${arregloRangos[3]}"

#Añadir Eliminar valores de un arreglo
arregloNumeros[6]=20
unset arregloNumeros[0]
echo "Arreglo de Números: ${arregloNumeros[*]}"
echo "Tamaño del Arreglo de Números ${#arregloNumeros[*]}"

