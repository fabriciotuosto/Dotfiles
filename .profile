# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
# if [ -n "$BASH_VERSION" ]; then
#     # include .bashrc if it exists
#     if [ -f "$HOME/.bashrc" ]; then
# 	. "$HOME/.bashrc"
#     fi
# fi

export NVM_LAZY_LOAD=true
export NVM_COMPLETION=true

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
export PATH=$PATH:/usr/local/go/bin

export NVM_DIR="$HOME/.nvm"
source $NVM_DIR/nvm.sh
# [ -s "$NVM_DIR/nvm.s" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f "/home/fabri/.ghcup/env" ] && source "/home/fabri/.ghcup/env" # ghcup-env

source "$HOME/.cargo/env"
source $HOME/.asdf/asdf.sh
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
# GO variables
GOROOT=~/.asdf/installs/golang/1.21.0/go
GOPATH=~/.asdf/installs/golang/1.21.0/packages
PATH=$GOPATH/bin:$PATH

alias vim=nvim
alias vi=nvim
alias code=nvim
alias top=bpytop
alias ls='exa'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias tmux="tmux -u -2"
# alias fd=fd-find

export EDITOR='nvim'
# export TERM=xterm-256color
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_TYPE=en_US.UTF-8

alias intuitivo="tmuxp load -d core-api core-dashboard wallet-api wallet-app wallet-dashboard greengrass core-events-worker core-sockets wallet-cron && tmux attach-session -t core-api"
# eval "$(starship init zsh)"
# starship init fish | source
