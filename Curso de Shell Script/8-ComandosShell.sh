#!/bin/bash

FuncaoTeste(){
    shift ; shift
    echo "dos parametros são: $@"
}

FuncaoTeste $@
