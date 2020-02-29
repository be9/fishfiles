set -gx NVM_DIR "$HOME/.nvm"
set -gx nvm_prefix /usr/local/opt/nvm

set -g fisher_path "$HOME/.config/fish/fisherman"

set fish_function_path $fish_function_path[1] $fisher_path/functions $fish_function_path[2..-1]
set fish_complete_path $fish_complete_path[1] $fisher_path/completions $fish_complete_path[2..-1]

for file in $fisher_path/conf.d/*.fish
    builtin source $file 2> /dev/null
end