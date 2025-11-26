#!/bin/bash

#$1=senhassh
#$2=usuario
#$3=host
#$4=porta
#$5=Comando a ser executado
#Entre aspas o comando desejado

sshpass -p "$1" ssh -o StrictHostKeyChecking=no $2@$3 -p $4 "$5"

sleep 5

sshpass -p "$1" ssh -o StrictHostKeyChecking=no $2@$3 -p $4 "$5"






