#!/bin/bash

################ VARIABLES ################
version="1.0.0"
logo="
███████  █████  ███    ███ ██████  ██      ███████      █████  ██████  ██████  
██      ██   ██ ████  ████ ██   ██ ██      ██          ██   ██ ██   ██ ██   ██ 
███████ ███████ ██ ████ ██ ██████  ██      █████       ███████ ██████  ██████  
     ██ ██   ██ ██  ██  ██ ██      ██      ██          ██   ██ ██      ██      
███████ ██   ██ ██      ██ ██      ███████ ███████     ██   ██ ██      ██                                                               
"

menu="$logo $version"
PS3='Select an option: '
options=("Print message" "Weather" "Dolar" "Exit")

################ FUNCTIONS ################
function first {
    echo "What do you want to say? "
    read message
    echo $message
}

function weather {
    ./src/functions/weather.py
}

function dolar {
    ./src/functions/dolar.js | python3 -m json.tool
}

function stop_app {
    echo "Goodbye"
    exit 0
}

################ MAIN ################
echo "$menu"
select opt in "${options[@]}"
do
    case $opt in
        "Print message")
            first
            break
            ;;
        "Weather")
            weather
            break
            ;;
        "Dolar")
            dolar
            break
            ;;
        "Exit")
            stop_app
            break
            ;;
        *) echo -e "Invalid option";;
    esac
done