zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' completions 1
zstyle ':completion:*' glob 1
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=** r:|=**'
zstyle ':completion:*' max-errors 3
zstyle ':completion:*' substitute 1

autoload -Uz compinit
compinit

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory
unsetopt beep
bindkey -e
alias emacs="emacs -nw"

export PATH="$PATH:$HOME/bin"

stty erase ^?

alias lsl="ls -lha --color=auto --group-directories-first"

# The following lines were added by compinstall

eval `dircolors -b`
alias clls="clear; ls --color"
alias ls="ls --color=auto"
alias ..="cd .."
alias ..l="cd .. && ls"
alias ...="cd ../.."
alias du="du -hsc"
alias dub="du -scb"
alias duk="du -sck"
alias df="df -h"
alias lsd="ls --color=auto -d */"

PS1="[%n:%m %3~] "
