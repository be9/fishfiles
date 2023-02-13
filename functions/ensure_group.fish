function ensure_group -d "Ensure that certain testing group is started" -a group_name
	set devenv $PLAID_PATH/go.git/devenv
	$devenv service stop --all
	$devenv group pull $group_name
	$devenv group start $group_name
end
