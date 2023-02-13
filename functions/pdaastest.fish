function pdaastest -d 'Run the specified test file(s) in PDaaS'
    environment/test node -r source-map-support/register  node_modules/.bin/mocha --exit --require build/test/init --file build/test/global-hooks \
        $argv
end
