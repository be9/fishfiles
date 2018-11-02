set -gx NVM_DIR "$HOME/.nvm"
set -gx nvm_prefix /usr/local/opt/nvm

set -g fisher_path "$HOME/.config/fish/fisherman"

set fish_function_path $fish_function_path $fisher_path/functions
set fish_complete_path $fish_complete_path $fisher_path/completions
