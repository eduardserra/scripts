#!/bin/bash
# Crea usuaris a partir d'un arxiu CSV que se li passa com paràmetre
# Format arxiu:
# nom,cognoms,userid,grup
if [[ $EUID -ne 0 ]]; then
  echo Has de ser root per executar aquest script
  exit 1
fi
file=$1
if [! -f $file]; then
    echo "No es troba l'arxiu"
    exit 1
fi

OLDIFS=$IFS
IFS=","

while read nom cognoms userid grup
do 
     useradd -c "${nom} ${cognoms}" -d /home/"${userid}" -G "{$grup}" -s /bin/bash "${userid}"
done < file.csv