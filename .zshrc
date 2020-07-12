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
alias ll='ls -l --color=auto'
alias ls='ls --color=auto'
alias ml='minicom'

PATH="/home/skobec/perl5/bin${PATH:+:${PATH}}"; export PATH;
PATH="/home/skobec//bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/skobec/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/skobec/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/skobec/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/skobec/perl5"; export PERL_MM_OPT;

# Java stuff
export JAVA_HOME=/usr/java/jre1.8.0_251/bin/java
export PATH=$PATH:/usr/java/jre1.8.0_251/bin

# For ML server
LANGUAGE=en_GB.UTF-8
LC_CTYPE=en_GB.UTF-8
LC_ALL=en_GB.UTF-8

# Quick add, commit, push shortcut
function gitup() {
    git add .
    git commit -a -m "$1"
    git push
}

# tmux setup
alias tmuxx="tmux new-session \; \
            split-window -h -p 25 \; \
            select-pane -t 1 \; \
            send-keys 'clear' C-m\; \
            select-pane -t 0 \; \
            attach"
