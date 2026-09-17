#!/bin/bash
if [ "$#" -ne 2 ]; then
    echo "Uso: $0 <palabra_o_frase> <ruta>"
    exit 1
fi

BUSQUEDA="$1"
RUTA="$2"

if [ ! -d "$RUTA" ]; then
    echo "Error: la ruta '$RUTA' no existe o no es un directorio."
    exit 1
fi

grep -Ril -- "$BUSQUEDA" "$RUTA"
