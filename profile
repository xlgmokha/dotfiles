export DEBEMAIL=mo@mokhan.ca
export DEBFULLNAME="mo khan"
export DOTNET_CLI_TELEMETRY_OPTOUT='1'
export EDITOR="vim"
export FZF_DEFAULT_COMMAND='fd --type f --hidden --exclude .git'
export GOPATH="$HOME"
export HISTCONTROL=erasedups
export HISTFILE=$HOME/.bash_history
export HISTSIZE=100000
export HISTTIMEFORMAT="%Y-%m-%d %T "
export INPUTRC="$HOME/.inputrc"
export LC_ALL=en_US.UTF-8
export LESSHISTFILE='/dev/null'
export LSCOLORS='gxfxcxdxbxegedabagacad'
export MANPAGER=/usr/bin/less
export PAGER=/usr/bin/less
export PATH=$GOPATH/bin:$PATH
export VISUAL="vim"

[ -f "$HOME/.profile.local" ] && . "$HOME/.profile.local"
[ -n "$BASH_VERSION" ] && [ -f "$HOME/.bashrc" ] && . "$HOME/.bashrc"
