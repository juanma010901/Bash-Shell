#!/bin/bash
#Programa que permite manejar las utilidades de Postgres
#Autor: Juan Manuel

opcion=0

#Función para instalar postgres
instalar_postgres () {
    echo -e "\nVerificar instalación de Postgres"
    verifyInstall=$(wich psql)
    if [[ $? -eq 0 ]]; then
        echo "Postgres ya se encuentra instalado"
    else
        read -s -p "Ingresar contraseña de sudo: " password
        read -s -p "Ingresar contrseña a utilizar en postgres: " passwordPostgres
        echo "$password" | sudo -S apt aptupdate
        echo "$password" | sudo -S apt-get -y install postgresql postgresql-contrib
        sudo -U postgres psql -c "ALTER USER postgres WITH PASSWORD '{passwordPostgres}';"
        echo "$password" | sudo -S systemctl enable postgresql.service 
        echo "$password" | sudo -S systemctl start postgresql.service
    fi
    read -n1 -s -r -p "Presione una tecla para continuar..."
}

#Función para desinstalar postgres
desinstalar_postgres () {
    echo "Desinstalar postgres..."
    read -s -p "Ingresar contraseña de sudo: " password
    echo -e "\n"
    read -s -p "Ingresar contrseña a utilizar en postgres: " passwordPostgres
    echo "$password" | sudo -S systemctl stop postgresql.service
    echo "$password" | sudo -S apt-get -y --purge postgresql\*
    echo "$password" | sudo -S rm -r /etc/postgresql
    echo "$password" | sudo -S rm -r /etc/postgresql-common
    echo "$password" | sudo -S rm -r /var/lib/postgresql
    echo "$password" | sudo -S userdel -r postgres
    echo "$password" | sudo -S groupdel postgresql 
    read -n1 -s -r -p "Presione una tecla para continuar..."
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
