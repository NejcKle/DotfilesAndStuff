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

PATH="/home/skobec/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/skobec/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/skobec/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/skobec/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/skobec/perl5"; export PERL_MM_OPT;
