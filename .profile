export CC=gcc
export CXX=g++
export EDITOR=nvim
export GOPATH=~/Projekty/go
export NODE_PATH=~/.local/share/node
export PERL_UNICODE=SDL

export PATH=~/.local/bin/:$GOPATH/bin:$NODE_PATH/bin:$PATH

[[ -z $DISPLAY && $(fgconsole) -eq 1 ]] && exec startx
