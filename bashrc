set -o vi

shopt -s checkwinsize

alias ..="cd .."
alias df="df -h"
alias du='du -ch'
alias grep='grep --color'
alias gti='git'
alias ls='ls --color=auto'
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias ps="ps auxf"
alias sshc="vim ~/.ssh/config"

PS1="\[\e[0;36m\]\w\[\e[0m\]\$(__git_ps1)\nモ "
