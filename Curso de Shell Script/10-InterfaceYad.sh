#!/bin/bash

Saida=$(yad --form \
    --title "Olá Mundo!" \
    --text "Exemplo <b>YAD</b>" \
    --field Nome 'Lucas' \
    --field Nascimento:DT 18/07/1998 \
    --field "Tempo de uso de Linux:NUM" '1!0..20!1' \
    --field "Sites:CB" 'Terminal Root!Viva ao Linux!Area 31!Comunidade do Hardware' \
    --field "Nano:CHK" TRUE \
    --field "Vim:CHK" \
    --field "Geany:CHK")

echo $Saida
IFS=',' read Nome Nascimento TempoUso Sites Yad <<< "$Saida"
echo $Saida | tr '|' ',' >> saida.csv
