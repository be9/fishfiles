function prune-local-branches 
  git remote prune origin
  for br in (git branch -vv | grep ': gone' | awk '{print $1}')
    echo $br 
    git branch -D $br
  end
end
