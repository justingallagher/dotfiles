# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob nomatch
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/justin/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Antigen
source ~/git/dotfiles/lib/antigen/antigen.zsh
antigen use oh-my-zsh
antigen bundle autoenv
antigen bundle colored-man
antigen bundle colorize
antigen bundle command-not-found
antigen bundle compleat
antigen bundle cp
antigen bundle safe-paste
antigen bundle vundle
antigen bundle git
antigen bundle
antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme fino
antigen apply
# End Antigen
