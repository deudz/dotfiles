# exports
export TERM=xterm-256color
export PATH=/usr/sbin:$HOME/.local/bin:$PATH
export GPG_TTY=$(tty) # i need to add this because signing fails if i dont

# aliases
alias em="emacsclient -c -a 'emacs'"
alias ema="emacsclient -nw -a 'emacs'"

alias ls="ls --color=yes --group-directories-first"
alias ll="ls -lh --color=yes --group-directories-first"
alias la="ls -lah --color=yes --group-directories-first"

alias cp="cp -rv"
alias mv="mv -v"
alias ln="ln -sv"
alias mkdir="mkdir -pv"
alias grep="grep -i --color=yes"

alias df="df -h"
alias free="free -h"

alias bare="git --git-dir=$HOME/dotfiles --work-tree=$HOME" # git bare config

alias gitc="git commit"
alias gitp="git push"
alias gita="git add"
alias gitb="git branch"
alias gits="git switch"
alias gitf="git fetch"
alias gitr="git rebase"
alias gitst="git status"
alias gitl="git log --oneline --graph --all"

# shopt
shopt -s autocd       # no need to type cd to change directories
shopt -s cdspell      # autocorrect cd
shopt -s checkjobs    # can't exit until all jobs are stopped
shopt -s checkwinsize # check terminal size and updates it if needed

# prompt
PROMPT_COMMAND='if [ $? = 0 ]; then PS1="\[\e[32;1m\]\[\e[34;1m\]\w\[\e[0m\] $ "; else PS1="\[\e[31;1m\]\w\[\e[0m\] $ "; fi'
