#!/bin/bash

while true ;
    do
    distros=$(dialog --stdout --title "Escolha sua Distro" --menu "Qua você usa:" 0 0 0 \
            1 "Debian"      \
            2 "Fedora"      \
            3 "Slackware"   \
            4 "Gentoo"      \
            5 "Arch"        \
            0 "Sair"        )

    [ $? -ne 0] && echo "Cancelou ou Apertou ESC" && break

    case "$distros" in
        1) dialog --stdout --msgbox "Debian, Compacto, leve e excelente!" 10 50 ; break ;;
        2) dialog --title 'Fedora' --infobox '\nAgradavel para alguns e não para outros' 10 30 ; break ;;
        3) dialog --title 'Slackware' --msgbox '\nVocê está ficando um pouco velho' 10 30 ; break ;;
        4) dialog --title 'Gentoo?' --yesno '\nOla ser de outro planeta' 10 25 ;

            if [ $? = 0 ]; then
                dialog --title 'Talvez um repetiliano?' --infobox 'Saldações!' 0 0 ;
            else
                dialog --title 'Olá terraqueo!' --infobox 'Espero que seja...' 0 0 ;
            fi
            break ;;

        5) dialog --title "Arch" --timebox '\nContando os minutos para o pacman quebrar' 0 0 ; break ;;
        0) echo "Você escolheu sair" ; break ;;

        esac
        done
