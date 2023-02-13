function rdocker --wraps='docker' --description 'Remote docker'
  set certs ~/Plaid/go.git/resources/development-certs/remote_devenv_certs
  docker --tlsverify \
    --tlscacert $certs/ca.pem \
    --tlscert $certs/cert.pem \
    --tlskey $certs/key.pem \
    -H tcp://odashevskii.devenv.plaid.io:2376 \
    $argv;
end
