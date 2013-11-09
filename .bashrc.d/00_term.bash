# 16 color xterm def for solarized

termdef="xterm-16color"

toe -a | grep $termdef > /dev/null

[ $? -eq 0 ] && export TERM="$termdef"

unset termdef