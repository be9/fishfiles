set -gx GOPATH "$HOME/go"
set -gx PATH $GOPATH/bin $PATH
set -gx GOPRIVATE github.plaid.com
set -gx GOPROXY https://proxy.golang.org
