11_ifElse.sh                                                                                        0000755 0001750 0001750 00000000774 14326517360 011620  0                                                                                                    ustar   juan                            juan                                                                                                                                                                                                                   # !/bin/bash
# Programa para ejemplificar el uso de la sentencia de decisión if, else
# Author: Juan Manuel

notaClase=0
edad=0

echo "Ejemplo Sentencia IF-Else"
read -n1 -p "Indique cual es su nota (1-9): " notaClase
echo -e "\n"
if [ $notaClase >= 7 ]; then
    echo "El alumno aprobó la materia"
else 
    echo "El alumno reprobó la materia"
fi

read -p "Ingrese su edad: " edad
echo -e "\n"
if (( $edad -le 18 )); then
    echo "La persona no puede votar"
else
    echo "La persona si puede votar"
fi
    12_ifAnidados.sh                                                                                    0000755 0001750 0001750 00000001156 14326523104 012437  0                                                                                                    ustar   juan                            juan                                                                                                                                                                                                                   # !/bin/bash
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

                                                                                                                                                                                                                                                                                                                                                                                                                  13_expresionesCondicionales.sh                                                                      0000755 0001750 0001750 00000001654 14326525007 015445  0                                                                                                    ustar   juan                            juan                                                                                                                                                                                                                   # !/bin/bash
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
                                                                                    14_case.sh                                                                                          0000755 0001750 0001750 00000000625 14326526477 011333  0                                                                                                    ustar   juan                            juan                                                                                                                                                                                                                   # !/bin/bash
# Programa para ejemplificar el uso de la sentencia Case
# Author: Juan Manuel


opcion=""


echo "Ejemplo Sentencia Case"
read -p "Ingrese una opción de la A - Z: " opcion
echo -e "\n"

case $opcion in
    "A") echo -e "\nOperación guardar Archivo";;
    "B") echo -e "Operación eliminar Archivo";;
    [C-E]) echo "No esta implementada la operación";;
    "*") "Opcion Incorrecta"
esac
                                                                                                           15_arreglos.sh                                                                                      0000664 0001750 0001750 00000002003 14326616633 012220  0                                                                                                    ustar   juan                            juan                                                                                                                                                                                                                   #!/bin/bash
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

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             16_forLoop.sh                                                                                       0000664 0001750 0001750 00000001163 14326623340 012022  0                                                                                                    ustar   juan                            juan                                                                                                                                                                                                                   #!/bin/bash
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

                                                                                                                                                                                                                                                                                                                                                                                                             17_whileLoop.sh                                                                                     0000664 0001750 0001750 00000000331 14326624330 012341  0                                                                                                    ustar   juan                            juan                                                                                                                                                                                                                   #!/bin/bash
#Programa para ejemplificar el uso de la sentencia de iteración While Loop
#Author: Juan Manuel

numero=1

while [ $numero -ne 10 ]
do
    echo "Imprimiendo $numero veces"
    numero=$((numero + 1))
done
                                                                                                                                                                                                                                                                                                       18_loopsAnidados.sh                                                                                 0000664 0001750 0001750 00000000342 14326625122 013201  0                                                                                                    ustar   juan                            juan                                                                                                                                                                                                                   #!/bin/bash
#Programa para ejemplificar el uso de los Loops Anidados
#Author: Juan Manuel

echo "Loops Anidados"

for fil in $(ls)
do
    for nombre in {1..4}
    do
        echo "Nombre Archivo: $fil _ $nombre"
    done
done
                                                                                                                                                                                                                                                                                              19_breakContinue.sh                                                                                 0000664 0001750 0001750 00000000611 14326630113 013167  0                                                                                                    ustar   juan                            juan                                                                                                                                                                                                                   # ! /bin/bash
# Programa para ejemplificar el uso de break y continue
# Autor: Juan Manuel

echo "Sentencias de Break y continue"
for fil in $(ls)
do
    for nombre in {1..4}
    do
        if [ $fil = "10_download.sh" ]; then
            break;
        elif [[ $fil == 4*  ]]; then
            continue;
        else
            echo "Nombre Archivo: $fil _ $nombre"
        fi
    done
done
                                                                                                                       1_utilityPostgres.sh                                                                                0000775 0001750 0001750 00000000211 14326270675 013553  0                                                                                                    ustar   juan                            juan                                                                                                                                                                                                                   # !/bin/bash
# Programa para realizar algunas operaciones utilitarias de Postgres

echo "Hola Bienvenido al Curso de Programación Bash"
                                                                                                                                                                                                                                                                                                                                                                                       20_menuOpciones.sh                                                                                  0000664 0001750 0001750 00000002266 14326632433 013051  0                                                                                                    ustar   juan                            juan                                                                                                                                                                                                                   #!/bin/bash
#Programa que permite manejar las utilidades de Postgres
#Autor: Juan Manuel

opcion=0

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
            echo -e "\nInstalando Postgres..."
            sleep 3
            ;;
        2)
            echo -e "\nDesinstalando Postgres..."
            sleep 3
            ;;
        3) 
            echo -e "\nSacando un respaldo..."
            sleep 3
            ;;
        4) 
            echo -e "\nRestaurando respaldo..."
            sleep 3
            ;;
        5)
            echo -e "\nSaliendo del prgorama"
            exit 0
            ;;
    esac
done
                                                                                                                                                                                                                                                                                                                                          21_archivosDirectorios.sh                                                                           0000664 0001750 0001750 00000000570 14327316354 014431  0                                                                                                    ustar   juan                            juan                                                                                                                                                                                                                   # ! /bin/bash
# Programa para ejemplificar la creación de archivos y directorios
# Autor: Juan Manuel

echo "Archivos - Directorios"

if [[ $1 == "d" ]]; then
    mkdir -m 755 $2
    echo "Directorio creado correctamente"
    ls -la $2
elif [[ $1 == "f" ]]; then
    touch $2
    echo "Archivo creado correctamente"
    ls -la $2
else
    echo "No existe esa opción: $2"
fi
                                                                                                                                        22_writeDile.sh                                                                                     0000664 0001750 0001750 00000000444 14327321226 012327  0                                                                                                    ustar   juan                            juan                                                                                                                                                                                                                   # ! /bin/bash
# Programa para ejemplificar cómo se escribe en un archivo
# Autor: Juan Manuel

echo "Escribir en un archivo"

#Lo que envien en archivo numero 2 se agregará al archivo número 1
echo "Valores escritos con el comando echo" >> $1

#Adición multilinea
cat << EOM >> $1
$2
EOM
                                                                                                                                                                                                                            23_readFile.sh                                                                                      0000664 0001750 0001750 00000001030 14327322742 012107  0                                                                                                    ustar   juan                            juan                                                                                                                                                                                                                   # ! /bin/bash
# Programa para ejemplificar cómo se lee en un archivo
# Autor: Juan Manuel

echo "Leer en un archivo"

#Primer método
echo -e "\nLeer directamente todo el archivo"
cat $1

#Segundo método
echo -e "\nAlmacenar los valores en una variable"
valorCat=`cat $1`
echo "$valorCat"

#Tercer método
#Se utiliza la variable especial IFS (Internal File Separator) para evitar que los espacios en blanco se recorten
echo -e "\nLeer archivos línea por línea utilizando while"
while IFS= read linea
do
    echo "$linea"
done < $1
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        24_operacionesArchivo.sh                                                                            0000664 0001750 0001750 00000001130 14327326047 014223  0                                                                                                    ustar   juan                            juan                                                                                                                                                                                                                   # ! /bin/bash
# Programa para ejemplificar las operaciones de un archivo
# Autor: Juan Manuel

echo "Operaciones de un archivo"

#Crear directorio para backups
mkdir -m 755 backupScripts

#Copiar los archivos al directorio de backup
echo -e "\nCopiar los scripts del directorio actual al nuevo directorio backupScripts"
cp *.* backupScripts/
ls -la backupScripts/

#Mover el directorio de backup a otra carpeta
echo -e "\nMover el directorio de backupScripts a otra ubicación: $HOME"
mv backupScripts $HOME

#Eliminar los archivos con extensión .txt
echo -e "\nEliminar los archivos .txt"
rm *.txt
                                                                                                                                                                                                                                                                                                                                                                                                                                        25_tar.sh                                                                                           0000664 0001750 0001750 00000000414 14327331060 011162  0                                                                                                    ustar   juan                            juan                                                                                                                                                                                                                   # ! /bin/bash
# Programa para ejemplificar el empaquetmaiento con el comando tar
# Autor: Juan Manuel

echo "Empaquetar todos los scripts de la carpeta en un archivo comprimido"

#Empaquetar en shellCourse todo lo que tenga extensión sh
tar -cvf shellCourse.tar *.sh
                                                                                                                                                                                                                                                    26_gzip.sh                                                                                          0000664 0001750 0001750 00000000666 14327335535 011372  0                                                                                                    ustar   juan                            juan                                                                                                                                                                                                                   # ! /bin/bash
# Programa para ejemplificar el empaquetmaiento con el comando tar y gzip
# Autor: Juan Manuel

echo "Empaquetar todos los scripts de la carpeta en un archivo comprimido"

#Empaquetar en shellCourse todo lo que tenga extensión sh
tar -cvf shellCourse.tar *.sh

#Cuando se empaqueta con gzip el empaquetamiento anterior se elimina
gzip shellCourse.tar

echo "Empaquetar un solo archivo, con un ratio 9"
gzip -9 9_options.sh
                                                                          27_pbzip2.sh                                                                                        0000664 0001750 0001750 00000000505 14327336434 011617  0                                                                                                    ustar   juan                            juan                                                                                                                                                                                                                   # ! /bin/bash
# Programa para ejemplificar el empaquetmaiento con el comando pbzip
# Autor: Juan Manuel

echo "Empaquetar todos los scripts de la carpeta en un archivo comprimido"

tar -cvf shellCourse.tar *.sh
pbzip2 -f shellCourse.tar

echo "Empaquetar un directorio con tar y pbzip2"
tar -cf *.sh -c > shellCourse.tar.bz2
                                                                                                                                                                                           2_variables.sh                                                                                      0000775 0001750 0001750 00000000460 14326311250 012261  0                                                                                                    ustar   juan                            juan                                                                                                                                                                                                                   # !/bin/bash
# Programa para revisar la declaración de variables

opcion=0
nombre=Marco

echo "Opción: $opcion y Nombre: $nombre"

# Exportar la variable nombre para que esté disponible en los demás procesos

export nombre

# Llamar el siguiente script para recuperar la variable
./2_variables_2.sh

                                                                                                                                                                                                                2_variables_2.sh                                                                                    0000775 0001750 0001750 00000000175 14326311425 012511  0                                                                                                    ustar   juan                            juan                                                                                                                                                                                                                   # !/bin/bash
# Programa para revisar la declaración de variables

echo "Opción nombre pasada del script anterior: $nombre"
                                                                                                                                                                                                                                                                                                                                                                                                   3_tipoOperadores.sh                                                                                 0000775 0001750 0001750 00000001765 14326320751 013330  0                                                                                                    ustar   juan                            juan                                                                                                                                                                                                                   # !/bin/bash
# Programa para revisar los tipos de operadores
# Autor: Juan Manuel

# !/bin/bash
# Programa para revisar los tipos de operadores
# Autor: Juan Manuel

numA=10
numB=4

echo -e "\n"
echo "Arithmetic Operators"
echo "Numbers: A=$numA and B=$numB"
echo -e "\nAdd A + B=" $((numA + numB))
echo "Subtract A - B=" $((numA - numB))
echo "Multiply A * B=" $((numA * numB))
echo "Divide A / B=" $((numA / numB))
echo "Residue A % B=" $((numA % numB))

echo -e "\nRelational operators"
echo "Numbers: A=$numA and B=$numB"
echo -e "\nA > B =" $((numA > numB))
echo "A < B =" $((numA < numB))
echo "A >= B =" $((numA >= numB))
echo "A <= B =" $((numA <= numB))
echo "A == B =" $((numA == numB))
echo "A != B =" $((numA != numB))

echo -e "\nAssignment operators"
echo "Numbers: A=$numA and B=$numB"
echo -e "\nAdd A += B =" $((numA += numB))
echo "Subtract A -= B =" $((numA -= numB))
echo "Multiply A *= B =" $((numA *= numB))
echo "Divide A /= B =" $((numA /= numB))
echo "Residue A %= B =" $((numA %= numB))
           4_argumentos.sh                                                                                     0000664 0001750 0001750 00000000415 14326341273 012504  0                                                                                                    ustar   juan                            juan                                                                                                                                                                                                                   # !/bin/bash
# Programa para ejemplificart el paso de argumentos

nombreCurso=$1
horarioCurso=$2

echo "El nombre del curso es: $nombreCurso dictado en el horario de $horarioCurso"
echo "El numero de parámetros enviados es: $#"
echo "Los parámetros enviados son: $*"
                                                                                                                                                                                                                                                   5_substitutionCommand.sh                                                                            0000775 0001750 0001750 00000000555 14326345320 014401  0                                                                                                    ustar   juan                            juan                                                                                                                                                                                                                   # !/bin/bash
# Programa para revisar los tipos de operadores
# Autor: Juan Manuel

# !/bin/bash
# Programa para revisar como ejecutar comandos dentro de un programa y almacenar en una variable para su posterior utilización

ubicacionActual=`pwd`
infoKernel=$(uname -a)

echo "La ubicación actual es: $ubicacionActual"

echo "Información del Kernel: $infoKernel"
                                                                                                                                                   6_readEcho.sh                                                                                       0000775 0001750 0001750 00000000673 14326350306 012042  0                                                                                                    ustar   juan                            juan                                                                                                                                                                                                                   # !/bin/bash
# Programa para revisar los tipos de operadores
# Autor: Juan Manuel

# !/bin/bash
# Programa para ejemplificar como capturar información del usuario utilizando el comando echo, read y $REPLY

option=0
backupName=""

echo "Programa Utilidades Postgres"
echo -n "Utilizar una opción:"
read
option=$REPLY
echo -n "Ingresar el nombre del archivo del backup:"
read
backupName=$REPLY
echo "Opción: $option, BackupName: $backupName"
                                                                     7_read.sh                                                                                           0000775 0001750 0001750 00000000501 14326351113 011227  0                                                                                                    ustar   juan                            juan                                                                                                                                                                                                                   # !/bin/bash
# Programa para ejemplificar como capturar información del usuario utilizando el comando read

option=0
backupName=""

echo "Programa Utilidades Postgres"
read -p "Utilizar una opción:" option
read -p "Ingresar el nombre del archivo del backup:" backupName
echo "Opción: $option, BackupName: $backupName"
                                                                                                                                                                                               7_validarInformacion.sh                                                                             0000664 0001750 0001750 00000001055 14326355137 014137  0                                                                                                    ustar   juan                            juan                                                                                                                                                                                                                   # !/bin/bash
# Validacion de datos

identificacionRegex='^[0-9]{10}$'
paisRegex='^EC|COL|US$'

# Solicitud de los datos
echo "Expresiones regulares"
read -p "Ingrese una identificación: " identificacion
read -p "Ingrese el país [EC,COL,US]: " pais

# Validación de los datos
if [[ $identificacion =~ $identificacionRegex ]]; then
    echo "Identificación: $identificacion válida"
else
    echo "Identificación: $identificacion inválida"
fi

if [[ $pais =~ $paisRegex ]]; then
    echo "País: $pais válido"
else
    echo "País: $pais inválido"
fi
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   8_readValidate.sh                                                                                   0000664 0001750 0001750 00000000714 14326357074 012721  0                                                                                                    ustar   juan                            juan                                                                                                                                                                                                                   # !/bin/bash
# Programa para ejemplificar como capturar la información del usuario y validarla

option=0
backupName=""
clave=""

echo "Programa Utilidades Postgres"
# Acepta el ingrso de información de sólo un caracter0
read -n1 -p "Utilizar una opción: " option
echo -e "\n"
read -n10 -p "Ingresar el nombre del archivo del backup: " backupName
echo -e "\n"
echo "Opción: $option, BackupName: $backupName"
read -s -p "Clave: " clave
echo "Clave: $clave"
                                                    9_opciones.sh                                                                                       0000775 0001750 0001750 00000001003 14326361431 012137  0                                                                                                    ustar   juan                            juan                                                                                                                                                                                                                   # !/bin/bash
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
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             reto1.sh                                                                                            0000664 0001750 0001750 00000000347 14326347076 011142  0                                                                                                    ustar   juan                            juan                                                                                                                                                                                                                   # !/bin/bash
# Reto uno del curso de Bash Shell: declarar dos variables una llamada option, otra llamada result, vamos a inicializarles e imprimir sus valores.

option=Hola
result=Platzi

echo "Option: $option and Result: $result"
                                                                                                                                                                                                                                                                                         reto2.sh                                                                                            0000664 0001750 0001750 00000002436 14326365147 011143  0                                                                                                    ustar   juan                            juan                                                                                                                                                                                                                   # !/bin/bash
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

                                                                                                                                                                                                                                  reto3.sh                                                                                            0000644 0001750 0001750 00000001224 14326521313 011121  0                                                                                                    ustar   juan                            juan                                                                                                                                                                                                                   #!/bin/bash

# Program:
#    This program asks the user to enter a number between 1 and 5.
#    If the user enters a number between 1 and 5, the program displays
#    the corresponding message.

entered_number=0


read -n1 -p "Enter a number between 1 and 5: " entered_number
echo -e "\n"

if [ $entered_number -eq 1 ]; then
    echo "You entered 1"
elif [ $entered_number -eq 2 ]; then
    echo "You entered 2"
elif [ $entered_number -eq 3 ]; then
    echo "You entered 3"
elif [ $entered_number -eq 4 ]; then
    echo "You entered 4"
elif [ $entered_number -eq 5 ]; then
    echo "You entered 5"
else
    echo "You did not enter a number between 1 and 5"
fi
                                                                                                                                                                                                                                                                                                                                                                            reto4.sh                                                                                            0000664 0001750 0001750 00000004564 14326634353 011147  0                                                                                                    ustar   juan                            juan                                                                                                                                                                                                                   #!/bin/bash
#Programa para validar procesos, memoria, recursos, variables.
#by: devp
clear
echo ""
echo "_________________________________________"
echo " PRECURSOS - Programa de Recursos del PC "
echo "-----------------------------------------"
echo "            MENÚ PRINCIAPAL              "
echo "-----------------------------------------"
sleep 3
opcion=0

while :
do
        #Limpiar Pantalla
        clear
        echo ""
        echo "1) Proceso Actuales "
        echo "2) Memoria Disponible "
        echo "3) Espacio en disco "
        echo "4) Informacion Red"
        echo "5) Variables de entorno configuradas "
        echo "6) Información Programa "
        echo "7) Comprimir Arcivos SH"
        echo "8) Salir "
        echo ""
        
        #Leer datos de usuario
        read -n1 -p "Ingrese la opción a seleccionar (1 - 8): " opcion
        
        #Validar opción ingresada
        case $opcion in
                1)
                        echo -e "\n..Procesos Actuales.."
                        ps axu
                        sleep 3
                        ;;
                2)
                        echo -e "\n..Memoria Disponible.."
                        free
                        sleep 3
                        ;;
                3)
                        echo -e "\n..Espacion en disco.."
                        df -h
                        sleep 3
                        ;;
                4)
                        echo -e "\n..Información Red.."
                        ifconfig -a
                        sleep 3
                        ;;
                5)
                        echo -e "\n..Variables de Entorno Configuradas.."
                        #printenv
                        env -u VAR
                        sleep 3
                        ;;
                6)
                        echo -e "\n..Información Programa.."
                        dpkg -l | more
                        sleep 3
                        ;;
                7)
                        echo -e "\n..Comprimiedo Archivos.."
                        tar -czvf archivosCompresos.tar.gz $(ls | grep "$*.sh")
                        echo -e "\n SUCESS!!"
                        sleep 3
                        ;;
                8)
                        echo -e "\n..Saliendo, ¡¡Gracias!!"
                        exit 0
                        ;;
        esac
done
                                                                                                                                            reto5.sh                                                                                            0000664 0001750 0001750 00000000550 14327330070 011125  0                                                                                                    ustar   juan                            juan                                                                                                                                                                                                                   # !/bin/bash
# Reto 5. Generar un archivo log, escribir dentro de este archivo el usuario, y la fecha de log en formato yyyy_MM_DD_HH_mm_ss
# Autor: Juan Manuel

echo "Generating log file..."
touch log.txt

echo "Registering login..."
user=$USER
date=$(date +%Y_%m_%d__%H:%M:%S)

echo "$user/$date" >> log.txt

sleep 1
echo -e "Login Registered\n"
cat log.txt
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        