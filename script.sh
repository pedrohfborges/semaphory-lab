#!/bin/bash

sshpass -p "$1" ssh -o StrictHostKeyChecking=no $2@$3 -p 2200 "service nginx stop"

sleep 5

sshpass -p "$1" ssh -o StrictHostKeyChecking=no $2@$3 -p 2200 "service nginx start"






