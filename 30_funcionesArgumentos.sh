#!/bin/bash
#Programa que permite manejar las utilidades de Postgres
#Autor: Juan Manuel

opcion=0

#Función para instalar postgres
instalar_postgres () {
    echo "Instalar postgres..."
}

#Función para desinstalar postgres
desinstalar_postgres () {
    echo "Desinstalar postgres..."
}

#Función para sacar respaldo
sacar_respaldo () {
    echo "Sacar respaldo..."
    echo "Direcotrio backup: $1"
}

#Función para restaurar respaldo
restaurar_respaldo () {
    echo "Restaurar respaldo..." 
    echo "Direcotrio respaldo: $2"
}

while :
do
    #Limpiar la pantalla
    clear
    #Desplegar el menu de opciones
    echo "_________________________________________"
    echo "PGUTIL - Programa de Utilidad de Postgres"
    echo "-----------------------------------------"
    echo "            MENÚ PRINCIAPAL              "
    echo "-----------------------------------------"
    echo "1. Instalar Postgres"
    echo "2. Desinstalar Postgres"
    echo "3. Sacar un respaldo"
    echo "4. Restaurar respaldo"
    echo "5. Salir"

    #Leer los datos del usuario
    read -n1 -p "Ingrese una opción (1-5): " opcion

    #Validación
    case $opcion in
        1)
            instalar_postgres
            sleep 3
            ;;
        2)
            desinstalar_postgres
            sleep 3
            ;;
        3) 
            read -p "Directorio de Backup: " directorioBackup
            sacar_respaldo $directorioBackup
            sleep 3
            ;;
        4) 
            read -p "Direcotrio de Respaldos: " direcotrioRespaldos
            restaurar_respaldo $directorioRespaldos
            sleep 3
            ;;
        5)
            echo -e "\nSaliendo del prgorama"
            exit 0
            ;;
    esac
done
