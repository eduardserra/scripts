#!/bin/bash
#
# Configuracions del servei de backup
#
# Ruta còpia local
backup_dir = "/backup"
# Configuració servei ftp còpia remota
ftp_host=
ftp_user=
ftp_pass=
# mail per avisar dels errors
mail_avis="root"
# temps per conservar backup
backup_days=30
exclude=$(mktemp)
include=$(mktemp)
cat > 
