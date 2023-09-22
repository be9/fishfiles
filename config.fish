set -g fisher_path "$HOME/.config/fish/fisherman"

set fish_function_path $fish_function_path $fisher_path/functions
set fish_complete_path $fish_complete_path $fisher_path/completions

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
