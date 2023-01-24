# ! /bin/bash
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
