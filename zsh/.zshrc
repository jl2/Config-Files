# Jeremiah's .zshrc

# Automatically use tmux
if [ -z "$TMUX" ]; then
    tmux attach -t default || tmux new -s default
fi

# Light
export LS_COLORS='rs=0:di=01;35:ln=01;35:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32'
# export LS_COLORS='rs=0:di=01;34:ln=01;35:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;102'

export SSH_AUTH_SOCK="${XDG_RUNTIME_DIR}/ssh-agent.socket"

# Dark
# export LS_COLORS='rs=0:di=01;34:ln=01;35:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=41;32'

unset SBCL_HOME

export PATH=$HOME/bin:$PATH:$HOME/.cargo/bin
export TEMP=/tmp

export RUST_BACKTRACE=1

HISTFILE=~/.histfile
HISTSIZE=1000000
SAVEHIST=1000000

alias more=less
export PAGER=less
export LESS="-X -S -R"

alias ls='ls --color=auto'
alias grep='grep -in --color=auto'
alias fgrep='fgrep -in --color=auto'
alias egrep='egrep -in --color=auto'

alias ..="cd .."
alias ...="cd ../.."


unsetopt beep
bindkey -e


zstyle :compinstall filename '/home/jeremiah/.zshrc'

autoload -U colors && colors

# export PROMPT="%{$fg_bold[magenta]%}%D%{$reset_color%} %{$fg_bold[blue]%}%*%{$reset_color%} %? %{$fg_bold[blue]%} %~ %{$reset_color%} > "
export PROMPT="%{$fg_bold[magenta]%}%D%{$reset_color%} %{$fg_bold[yellow]%}%*%{$reset_color%} %? %{$fg_bold[yellow]%} %~ %{$reset_color%} > "

export RPROMPT=

# This helps Tramp login more reliably by removing the fancy (hard to detect) prompt
if [[ $TERM == "dumb" ]]; then
    export PS1="> "
    export PROMPT="> "
    export RPROMPT=""
fi

export ALTERNATE_EDITOR=emacs
export EDITOR=emacsclient
export VISUAL=emacsclient
export BROWSER=/usr/bin/firefox


setopt autopushd pushdignoredups

autoload -Uz compinit
compinit

zstyle ':completion:*' verbose yes
zstyle ':completion:*:descriptions' format '%B%d%b'
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:warnings' format 'No matches for: %d'
zstyle ':completion:*' group-name ''
zstyle ":completion:*" matcher-list 'm:{A-Za-z}={a-zA-Z}'


unset GNOME_KEYRING_CONTROL
unset GNOME_KEYRING_PID

unset SBCL_HOME

fpath=(~/.zcomp $fpath)

# opam configuration
test -r /home/jeremiah/.opam/opam-init/init.zsh && . /home/jeremiah/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
