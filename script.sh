#!/bin/bash

#$1=senhassh
#$2=usuario
#$3=host
#$4=porta
#Entre aspas o comando desejado

clear 

echo "Parando o Serviço do NGINX..."

echo "---------------------------------------------------------------"

sleep 2

sshpass -p "$1" ssh -o StrictHostKeyChecking=no $2@$3 -p $4 "$5" 

sleep 3

pkill -9 $6

echo "Matando os Processos Fantasmas do $6"

echo "---------------------------------------------------------------"

sleep 3 

echo "Iniciado o Serviço do NGINX..."

sshpass -p "$1" ssh -o StrictHostKeyChecking=no $2@$3 -p $4 "$7"

echo "---------------------------------------------------------------"

echo "FINALIZADO"









