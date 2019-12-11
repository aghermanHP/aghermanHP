#!/bin/bash

PS3='Please enter your choice: '
options=("nano" "xed" "firefox" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "nano")
            echo "you chose choice 1"
            sudo nano 
            ;;
        "xed")
            echo "you chose choice 2"
            sudo xed
            ;;
        "firefox")
            echo "you chose choice $REPLY which is $opt"
            firefox
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done 