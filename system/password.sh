#!/bin/bash
if [[ $EUID -ne 0 ]]; then
  echo Has de ser root per executar aquest script
  exit 1
fi
#Obtenir usuaris amb uidNumber >= 1000
grep "x:[1-9][0-9][0-9][0-9]:" /etc/passwd | while read -r line
do
    usuari="$(cut -d ':' -f 1 <<< "$line")";
    echo "$usuari"
    echo -e "p@ssw0rd\np@ssw0rd" | (passwd  $usuari)
done
