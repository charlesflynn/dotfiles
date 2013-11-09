# Load RVM into a shell session *as a function*

rvm_path="$HOME/local/opt/rvm"

[[ -s "$rvm_path/scripts/rvm" ]] && source "$rvm_path/scripts/rvm"

unset rvm_path
