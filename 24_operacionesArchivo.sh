# ! /bin/bash
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
