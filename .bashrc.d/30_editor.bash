command -v vim >/dev/null || return

EDITOR=$(command -v vim)
VISUAL="$EDITOR"
alias ex="$EDITOR"
alias vi="$EDITOR"
alias view="$EDITOR -R"
export EDITOR VISUAL
