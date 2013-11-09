# User local dir_colors

alias ls="ls --color"
alias ll="ls -lA"

localdircolors=$HOME/.dir_colors

[ -s $localdircolors ] && eval `dircolors $localdircolors`

unset localdircolors
