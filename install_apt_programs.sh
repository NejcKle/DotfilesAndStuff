#!/bin/bash

sudo add-apt-repository ppa:numix/ppa
sudo apt update && sudo apt full-upgrade -y

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

# Basics
install curl
install git
install tmux
install tree
install vim-gtk #gtk version, so we can paste nicely to system cliboard
install make
install gcc
install g++
install unzip
install bash
install wget
install openocd
install gdb-multiarch
install gcc-arm-none-eabi
install cmake
install minicom
install python3
install dconf-editor
install dconf-cli 
install uuid-runtime
install gnome-shell-extensions       
install neofetch       
install zsh       
install exuberant-ctags
install putty

# For latex
install zathura
install latexmk
install xdotool

# Desktop theme
install arc-theme
install numix-icon-theme-circle
install numix-icon-theme-square



# Fun stuff
install figlet
install lolcat

# Fun hello
figlet "AWW YEAH, DONE!" | /usr/games/lolcat
