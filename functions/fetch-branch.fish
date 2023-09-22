function fetch-branch -a branch
  git fetch origin +refs/heads/$branch:refs/remotes/origin/$branch
end
