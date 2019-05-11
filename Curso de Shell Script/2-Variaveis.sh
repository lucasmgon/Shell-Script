#!/bin/bash

OLA="Olá, Mundo"
EXPANSAO=$(echo "Variavel de expansao" | grep de)

echo $OLA

echo $EXPANSAO

echo t{r,igr,rist}es

ARRAY=("Debian" "Manjaro" "Fedora" "Tails" "Mint")

echo ${ARRAY[4]}

echo ${ARRAY[@]}

echo ${#ARRAY[@]} "arrays"

echo ${ARRAY[*]}
