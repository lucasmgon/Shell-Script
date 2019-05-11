#!/bin/bash

#Função:
MinhaFuncao(){
    echo "Ola Mundo! $2 $1"
}

#chamada da funcao com parametros:
MinhaFuncao $1 $2

SegundaFuncao(){
    local MENSAGEM="Dust"    
    echo "Será exibido"
    return
    echo "Não sera exibido"
}

#chamada da funcao com return:
SegundaFuncao

echo $MENSAGEM

declare -r CONSTANTE="Valor nunca altera."

echo $CONSTANTE
