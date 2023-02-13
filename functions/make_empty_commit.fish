# Defined in - @ line 1
function make_empty_commit --wraps='git commit -m Empty --allow-empty' --description 'alias make_empty_commit=git commit -m Empty --allow-empty'
  git commit -m Empty --allow-empty --no-verify $argv;
end
