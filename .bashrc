# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    source /etc/bashrc
fi

# User specific aliases and functions

# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

if [[ $MAIL == "$HOME"/* ]]; then
    MAILCHECK=15
else
    unset -v MAILCHECK
fi

export HISTFILESIZE=
export HISTSIZE=
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
export HISTIGNORE=$'[ \t]*:&:[fb]g:exit'
export PROMPT_COMMAND="history -a;$PROMPT_COMMAND"
export TMOUT=0

setterm -bfreq 0 2>/dev/null
stty -ixon -ctlecho 2>/dev/null

shopt -s checkwinsize
shopt -s cmdhist
shopt -s dotglob
shopt -s extglob
shopt -s histappend
shopt -u mailwarn
shopt -s no_empty_cmd_completion
shopt -s progcomp

if [[ -d $HOME/.bashrc.d ]]; then
    for config in "$HOME"/.bashrc.d/*; do
        [[ -f $config ]] && source "$config"
    done
    unset -v config
fi
