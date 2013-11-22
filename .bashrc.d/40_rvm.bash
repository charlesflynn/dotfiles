# ruby

rvm_path="$HOME/.rvm"
GEM_HOME=$HOME/.local/lib/ruby/1.9.1

if [ -s "$rvm_path/scripts/rvm" ]; then
    source "$HOME/.rvm/scripts/rvm" 
    export PATH="$rvm_path/bin:$PATH"
    unset rvm_path
elif [ -d $GEM_HOME/bin ]; then
    export PATH="$PATH:$GEM_HOME/bin"
    export GEM_HOME
fi
