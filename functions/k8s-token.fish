# Defined in - @ line 1
function k8s-token --description alias\ k8s-token\ aws-iam-authenticator\ token\ -i\ k8s.plaid.io\ \|\ jq\ -r\ \'.status.token\'\ \|\ tr\ -d\ \'\\n\'\ \|pbcopy
	aws-iam-authenticator token -i k8s.plaid.io | jq -r '.status.token' | tr -d '\n' |pbcopy $argv;
end
