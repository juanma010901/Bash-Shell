# !/bin/bash
# Programa para ejemplificar como se realiza el paso de opciones con o sin parámetros

echo "Programa opciones"
echo "Opción 1 enviada: $1"
echo "Opción 2 enviada: $2"
echo "Opción 3 enviada: $3"
echo "Opciones enviadas: $*"
echo -e "\n"
echo "Recuperar valores"
while [ -n "$1" ]
    do
        case "$1" in
        -a) echo "-a Option used ";;
        -b) echo "-b Option used ";;
        -c) echo "-c Option used ";;
        *) echo "$! no es una opción";;
        esac
        shift
     done
