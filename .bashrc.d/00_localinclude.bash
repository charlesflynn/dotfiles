# Homedir include paths

incpaths=($HOME/include $HOME/.local/include $HOME/local/include)

for i in ${incpaths[@]}; do
    [ -d ${i} ] && [[ $CFLAGS != *${i}* ]] && export CFLAGS="-I${i} $CFLAGS"
done

unset incpaths