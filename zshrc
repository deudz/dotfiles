setopt PROMPT_SUBST

autoload -Uz vcs_info

precmd() { vcs_info }
PS1="%B%F{red}<%F{yellow}%n%F{green}@%F{blue}%m %F{magenta}%~%F{red}>%f${vcs_info_msg_0_} $%b "