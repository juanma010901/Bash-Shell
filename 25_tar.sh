# ! /bin/bash
# Programa para ejemplificar el empaquetmaiento con el comando tar
# Autor: Juan Manuel

echo "Empaquetar todos los scripts de la carpeta en un archivo comprimido"

#Empaquetar en shellCourse todo lo que tenga extensión sh
tar -cvf shellCourse.tar *.sh
