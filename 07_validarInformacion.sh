# !/bin/bash
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
