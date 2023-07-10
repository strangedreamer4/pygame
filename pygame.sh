#!/bin/bash

sleep 1
clear
echo "Do you want to update your system? yes/no?"
read yes

if [ "$yes" == "yes" ]; then
    clear
    sudo apt update -y
    clear
    apt update -y
    clear
    sudo apt install python -y
    clear
    apt install python -y
    clear
    python3 -m pip install freegames
    clear
    python -m pip install freegames
    clear
    sleep 1
    echo "             /\_/\""
    sleep 1
    echo "            ( o.o )"
    sleep 1
    echo "             > ^ <  (Meoo)"
    sleep 1
    echo "                 Welcome User "
    sleep 2
    # Define the possible choices
    choices=(
        "snake"
        "paint"
        "pacman"
        "cannon"
    )

    # Get the user's input
    echo "Please select one of the following options:"
    for choice in "${choices[@]}"; do
        echo "  ${choice}"
    done

    read -p "Your choice: " choice

    # Check if the user's input is valid
    if ! echo "${choices[@]}" | grep -q "$choice"; then
        echo "Invalid choice."
        exit 1
    fi

    # Check which option the user selected
    case $choice in
        "snake")
            echo "You chose snake."
            sleep 2
             python -m freegames.snake 
            ;;
        "paint")
            echo "You chose paint"
            sleep 2
            python -m freegames.paint
            ;;
        "pacman")
            echo "You chose pacman."
            sleep 2
             python -m freegames.pacman
            ;;
        "cannon")
            echo "You chose cannon."
            sleep 2
            python -m freegames.cannon
            ;;
    esac
else
    sleep 1
    echo "             /\_/\""
    sleep 1
    echo "            ( o.o )"
    sleep 1
    echo "             > ^ <  (Meoo)"
    sleep 1
    echo "                 Welcome User "
    sleep 2
    # Define the possible choices
    choices=(
        "snake"
        "paint"
        "pacman"
        "cannon"
    )

    # Get the user's input
    echo "Please select one of the following options:"
    for choice in "${choices[@]}"; do
        echo "  ${choice}"
    done

    read -p "Your choice: " choice

    # Check if the user's input is valid
    if ! echo "${choices[@]}" | grep -q "$choice"; then
        echo "Invalid choice."
        exit 1
    fi

    # Check which option the user selected
    case $choice in
        "snake")
            echo "You chose snake."
            sleep 2
             python -m freegames.snake 
            ;;
        "paint")
            echo "You chose paint"
            sleep 2
            python -m freegames.paint
            ;;
        "pacman")
            echo "You chose pacman."
            sleep 2
             python -m freegames.pacman
            ;;
        "cannon")
            echo "You chose cannon."
            sleep 2
            python -m freegames.cannon
            ;;
    esac
fi

