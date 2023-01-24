# ! /bin/bash
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
