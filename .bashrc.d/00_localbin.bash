# Homedir bin paths

binpaths=($HOME/bin $HOME/.local/bin $HOME/local/bin)

for i in ${binpaths[@]}; do
    [ -d ${i} ] && [[ $PATH != *${i}* ]] && export PATH="${i}:$PATH"
done

unset binpaths