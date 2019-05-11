#!/bin/bash

mkdir Newpaste
cd Newpaste/

for runlevel in 0 1 2 3 4
do
	mkdir Pasta${runlevel}
	echo $runlevel
done

echo

_INPUT_STRING="Ola"

while [[ "$_INPUT_STRING" != "N" ]]
do
	echo "Deseja continuar [S/N]: "
    read _INPUT_STRING
    
    if [[ $_INPUT_STRING = "N" ]]; then
        echo "Fim..."
    else
		echo "Continuando..."
    fi
done
