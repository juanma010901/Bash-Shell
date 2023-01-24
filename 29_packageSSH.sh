# ! /bin/bash
# Programa para ejemplificar la forma de cómo transferir por la ed utilizando el comando rsync, utilziando las opciones de  empaquetamiento para optimizar la velocidad de transferencia
# Autor: Juan Manuel

echo "Empaquetar todos los scripts de la carpeta shellCourse y transferirlos por la red a otro equipo usando el comando rsync"

host=""
usuario=""

read -p "Ingrese el host: " host
read -p "Ingrese el usuario: " usuario

echo -e "\nEn este momento se procederá a empaquetar la careta y transferirla según los datos ingresados"
rsync -avz $(pwd) $usuario@$host:/Users/Usuario/Desktop/Prueba
