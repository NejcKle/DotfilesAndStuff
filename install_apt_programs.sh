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
install xclip # So we can paste from tmux buffer into system clipboard
install tree
install vim-gtk #gtk version, so we can paste nicely to system cliboard
install make
install cmake
install gcc
install g++
install unzip
install bash
install wget
install openocd
install gdb-multiarch
install gcc-arm-none-eabi
install minicom
install python3
install python3-pip
install dconf-editor
install dconf-cli 
install uuid-runtime
install gnome-shell-extensions       
install gnome-tweak-tool
install neofetch       
install zsh       
install exuberant-ctags
install broadcom-sta-dkms
install bison
install filezilla
install htop
install spotify-client
install ccache
install dfu-util

# For latex
install zathura
install xdotool
install latexmk
install texlive-latex-extra


# Desktop theme
install arc-theme
install numix-icon-theme-circle
install numix-icon-theme-square
install papirus-icon-theme

# Zephyr stuff
install ninja-build
install gperf
install python3-setuptools
install python3-wheel
install xz-utils
install file
install gcc-multilib

# Fun stuff
install figlet
install lolcat

# Fun hello
figlet "AWW YEAH, DONE!" | /usr/games/lolcat
