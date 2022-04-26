. "$HOME/.cargo/env"
export GOPATH=~/go
case ":${PATH}:" in
    *:"/usr/local/go/bin:$GOPATH/bin:$HOME/.local/bin:$HOME/bin":*)
        ;;
    *)
        export PATH="$PATH:/usr/local/go/bin:$GOPATH/bin:$HOME/.local/bin:$HOME/bin"
        ;;
esac
