function pushit -d 'Pushes current branch to origin even if it does not exist'
	set branch (git rev-parse --abbrev-ref HEAD)
 	git push --set-upstream origin $branch
end
