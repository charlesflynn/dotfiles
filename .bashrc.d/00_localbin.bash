# Homedir bin paths

binpaths=($HOME/bin $HOME/local/bin $HOME/local/scripts)

for i in ${binpaths[@]}; do
    [ -d ${i} ] && [[ $PATH != *${i}* ]] && export PATH="${i}:$PATH"
done

unset binpaths
