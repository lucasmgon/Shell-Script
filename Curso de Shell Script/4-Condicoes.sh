#!/bin/bash

Condicao(){
    VARIAVEL=$1;

    if [[ "$VARIAVEL" -gt 10 ]]
    then
        echo "é maior que 10"

    elif [[ "$VARIAVEL" -eq 10 ]]
    then
        echo "é igual a 10"

    else
        echo "é menor que 10"

    fi
}


#cada opção tem que fechar com dois ponto e virgula (;)
Caso(){
case $1 in
    10) echo "é 10";;
    9) echo "é 9";;
    7|8) echo "é 7 ou 8";;
    *) echo "é menor que 6 ou maior que 10";;
esac
}

Condicao $1
Caso $1
