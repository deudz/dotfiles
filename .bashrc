# exports
export TERM=xterm-256color
export EDITOR=vim
export PATH=/usr/sbin:$PATH

# aliases
alias ls="ls --color=yes --group-directories-first"
alias ll="ls -l --color=yes --group-directories-first"
alias la="ls -lah --color=yes --group-directories-first"

alias ..="cd .."

alias mkdir="mkdir -pv"
alias grep="grep -i --color=yes"
alias pgrep="pgrep --color=yes"

alias bare="git --git-dir=$HOME/dotfiles --work-tree=$HOME"

# prompt
PROMPT_COMMAND='if [ $? = 0 ]; then PS1="\[\e[32;1m\]\[\e[34;1m\]\w\[\e[0m\] $ "; else PS1="\[\e[31;1m\]\w\[\e[0m\] $ "; fi'