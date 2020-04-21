HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

export TERM=xterm-256color

source /home/skobec/antigen.zsh

# Pure theme, both are needed
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting # Needs to be last bundle

antigen apply


# aliases
alias ll='ls -l'
