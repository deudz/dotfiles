# -*- mode: sh -*-
ytbest() {
  yt-dlp -f bv+ba "$1" -o "$2"
}

ytwav() {
  yt-dlp -x --audio-format wav "$1" -o "$2"
}

ytopus() {
  yt-dlp -x --audio-format opus "$1" -o "$2"
}

ytmusic() {
  yt-dlp -x --audio-format opus --add-metadata --embed-thumbnail "$1" -o "$2"
}

export ALTERNATE_EDITOR="emacs"

alias ema="emacsclient -t"
alias em="emacsclient -c"

autoload -Uz vcs_info
precmd() { vcs_info }
setopt PROMPT_SUBST
PROMPT='%B%F{red}<%F{yellow}%n%F{green}@%F{blue}%m %F{magenta}%~%F{red}>%f${vcs_info_msg_0_} $%b '
