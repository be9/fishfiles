function test_group -d "Run tests for a given group" -a group_name
	argparse --name=test_group 'a/all' -- $argv
    or return

    if test -n $_flag_all
    	set filespec $group_name/...
    else
    	set filespec $group_name/
    end

	go test -count 1 -v -timeout 15m ./services/testing/$filespec
end
