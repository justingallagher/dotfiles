# @file zshrc
# @brief Configures custom zsh settings and plugins
# @author Justin Gallagher (justingallag@gmail.com)
# @since 2014-11-04

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
source ~/.lib/antigen/antigen.zsh
antigen use oh-my-zsh

antigen bundle archlinux
antigen bundle colored-man-pages
antigen bundle colorize
antigen bundle command-not-found
antigen bundle compleat
antigen bundle cp
antigen bundle git
antigen bundle pip
antigen bundle safe-paste
antigen bundle virtualenv
antigen bundle vundle
antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply
# End Antigen

# Vundle
vundle-init

# Theme
source ~/.prompt.zsh-theme
# End theme

# Set environment variables
export EDITOR=vim

# Aliases
alias gs='git status'

# Show machine information.
# If running on WSL, show the Windows logo.
if grep -q -i 'Microsoft' /proc/sys/kernel/osrelease 2>/dev/null
then
    neofetch --ascii_distro windows11
else
    neofetch
fi

# Reset prompt every 60 seconds to update the clock.
TMOUT=1
TRAPALRM() {
    [[ `date +%S` -eq "00" ]] && zle reset-prompt
}
