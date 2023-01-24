# ! /bin/bash
# Programa para ejemplificar el empaquetmaiento con el comando tar y gzip
# Autor: Juan Manuel

echo "Empaquetar todos los scripts de la carpeta en un archivo comprimido"

#Empaquetar en shellCourse todo lo que tenga extensión sh
tar -cvf shellCourse.tar *.sh

#Cuando se empaqueta con gzip el empaquetamiento anterior se elimina
gzip shellCourse.tar

echo "Empaquetar un solo archivo, con un ratio 9"
gzip -9 9_options.sh
