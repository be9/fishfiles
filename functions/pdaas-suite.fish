function pdaas-suite --description 'run pdaas test suite'
  set suite $argv
  devenv repo --timeout=1h unit-test --suite $suite pdaas 2>&1 | tee $suite.log
end
