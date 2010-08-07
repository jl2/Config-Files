# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' max-errors 3
zstyle :compinstall filename '/home/jlarocco/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install

export PATH="$PATH:$HOME/bin"
eval `dircolors -b`
alias clls="clear; ls --color"
alias ls="ls --color=auto"
alias ..="cd .."
alias ...="cd ../.."
alias opera="opera -nomail"
alias du="du -hsc"
alias dub="du -scb"
alias duk="du -sck"
alias df="df -h"
alias lsd="ls --color=auto -d */"
export DISPLAY=:0

PS1="[%n:%m %3~] "

alias ..l="cd .. && ls"

alias emacs="emacs -nw"