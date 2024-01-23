#!/bin/bash
#------------------------------------------------------------------------------------------
# Autor: Treius
# Fecha: 18/12/2023
#
# Descripción:  script que instala python3 y los paquetes necesarios para que funcione el 
#               programa installsamba.py y lo ejecuta
#------------------------------------------------------------------------------------------

if [ $# -ne 4 ]; then
    echo "Faltan argumentos... Uso: sudo installsamba host dominio usuario contraseña"
    exit 1
fi

apt install -y python3 > /dev/null

python3 /sbin/installsamba.py $1 $2 $3 $4
