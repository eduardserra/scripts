#!/bin/bash
# Exemple de script per comprovar si un arxiu existeix 
# i si té permissos de lectura

if [[ $# -ne 1 ]]
then
    echo "Cal passar un nom d'arxiu paràmetre"
    exit 1
fi
if ! [[ -f $1 ]]; then
# El fitxer no existeix
    echo "El fitxer no existeix"
    exit 1
fi


if ! [[ -r $1 ]];then
    # No té permisos de Lectura
    echo "No té permís de lectura"
    exit 1
fi
echo -e "El fitxer $1 té permis de lectura\n"
exit 0
