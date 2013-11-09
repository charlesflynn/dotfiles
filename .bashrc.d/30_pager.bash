command -v less >/dev/null || return

PAGER=$(command -v less)

LESS="-FXRi"

export PAGER LESS