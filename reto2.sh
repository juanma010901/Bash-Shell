# !/bin/bash
# Reto 2:Solicitar la información de cada uno de ustedes como nombres, apellidos, edad, dirección y números telefónicos; y posterior imprima toda la información

nombreX='^[a-z]{2,}$'
apellidoX='^[A-z]{2,}$'
edadX='^[1-9]{1,2}$'
direccionX='^[A-z]*$'
telefonoX="^[0-9]{10}$"

echo "Ingrese la información personal"
read -p "Ingrese un nombre: " nombre
read -p "Ingrese un apellido: " apellido
read -p "Ingrese una edad: " edad
read -p "Ingrese una direccion: " direccion
read -p "Ingrese un telefono: " telefono
echo -e "\n"

# Validación de los datos
if [[ $nombre =~ $nombreX ]]; then
    echo "nombre: $nombre válida"
else
    echo "nombre: $nombre inválida"
fi
if [[ $apellido =~ $apellidoX ]]; then
    echo "apellido: $apellido válida"
else
    echo "apellido: $apellido inválida"
fi
if [[ $edad =~ $edadX ]]; then
    echo "edad: $edad válida"
else
    echo "edad: $edad inválida"
fi
if [[ $direccion =~ $direccionX ]]; then
    echo "direccion: $direccion válida"
else
    echo "direccion: $direccion inválida"
fi
if [[ $telefono =~ $telefonoX ]]; then
    echo "telefono: $telefono válida"
else
    echo "telefono: $telefono inválida"
fi
echo -e "\n"

# Mostrar Datos
echo "Mostrar datos:"
echo "$nombre"
echo "$apellido"
echo "$edad"
echo "$direccion"
echo "$telefono"

