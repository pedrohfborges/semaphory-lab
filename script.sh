#!/bin/bash

#$1=senhassh
#$2=usuario
#$3=host
#$4=porta

sshpass -p "$1" ssh -o StrictHostKeyChecking=no $2@$3 -p $4 "service nginx stop"

sleep 5

sshpass -p "$1" ssh -o StrictHostKeyChecking=no $2@$3 -p $4 "service nginx start"






