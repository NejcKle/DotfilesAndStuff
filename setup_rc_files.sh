#!/bin/bash

dotfilesDir=$(pwd)

function linkDotfile {
  dest="${HOME}/${1}"
  dateStr=$(date +%Y-%m-%d-%H%M)

  if [ -h ~/${1} ]; then
    # Existing symlink 
    echo "Removing existing symlink: ${dest}"
    rm ${dest} 

  elif [ -f "${dest}" ]; then
    # Existing file
    echo "Backing up existing file: ${dest}"
    mv ${dest}{,.${dateStr}}

  elif [ -d "${dest}" ]; then
    # Existing dir
    echo "Backing up existing dir: ${dest}"
    mv ${dest}{,.${dateStr}}
  fi

  echo "Creating new symlink: ${dest}"
  ln -s ${dotfilesDir}/${1} ${dest}
}

# Get antigen, plugin for zsh
curl -L git.io/antigen > antigen.zsh

#Create symlink for all files below in home directory, where they are expected
linkDotfile .vim
linkDotfile .vimrc
linkDotfile .gitconfig
linkDotfile .tmux.conf
linkDotfile .minirc.dfl
linkDotfile .zshrc
linkDotfile antigen.zsh

# Update the shell, restart of computer is needed afterwards
chsh -s $(which zsh)

bash -c  "$(wget -qO- https://git.io/vQgMr)"
