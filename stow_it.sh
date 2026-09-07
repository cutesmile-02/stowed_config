#!/bin/bash

#shellcheck disable=SC1090

source ~/asterix/utils.sh

if [ -d "$HOME/.config/$1" ]; then 

   mkdir -p "$1/dot-config/"

   mv "$HOME/.config/$1" "$HOME/.stowed_config/$1/dot-config/$1"

   stow --dotfiles "$1"
else
   printError "Directory does not exist : $1"
fi
