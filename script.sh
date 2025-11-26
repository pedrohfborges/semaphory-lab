#!/bin/bash

#$1=senhassh
#$2=usuario
#$3=host
#$4=porta
#Entre aspas o comando desejado

sshpass -p "$1" ssh -o StrictHostKeyChecking=no $2@$3 -p $4 "service nginx stop"

sleep 5

sshpass -p "$1" ssh -o StrictHostKeyChecking=no $2@$3 -p $4 "$5"


pid=$(ps -aux | grep nginx | cut -d " " -f5)


for i in $(cat $pid)

do 

    kill $i
    echo "Matamos o PID $i"
done





