# ! /bin/bash
# Programa para ejemplificar el empaquetmaiento con el comando pbzip
# Autor: Juan Manuel

echo "Empaquetar todos los scripts de la carpeta en un archivo comprimido"

tar -cvf shellCourse.tar *.sh
pbzip2 -f shellCourse.tar

echo "Empaquetar un directorio con tar y pbzip2"
tar -cf *.sh -c > shellCourse.tar.bz2
