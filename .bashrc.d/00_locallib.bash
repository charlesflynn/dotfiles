# Homedir lib paths

locallib=$HOME/local/lib
libpaths=($HOME/lib $HOME/.local/lib $HOME/local/lib)

for i in ${libpaths[@]}; do
    if [ -d ${i} ]; then
        [[ $LD_LIBRARY_PATH != *${i}* ]] && export LD_LIBRARY_PATH="${i}:$LD_LIBRARY_PATH"
        [[ $LDFLAGS != *${i}* ]] && export LDFLAGS="-L${i} $LDFLAGS"
    fi
done

unset libpaths