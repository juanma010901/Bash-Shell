# !/bin/bash
# Programa para ejemplificart el paso de argumentos

nombreCurso=$1
horarioCurso=$2

echo "El nombre del curso es: $nombreCurso dictado en el horario de $horarioCurso"
echo "El numero de parámetros enviados es: $#"
echo "Los parámetros enviados son: $*"
