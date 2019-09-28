export CC=gcc
export CXX=g++
export EDITOR=nvim
export GOPATH=~/Projekty/go
export NODE_PATH=~/.local/share/node
export PERL_UNICODE=SDL

typeset -U path
path=(~/.local/bin $GOPATH/bin $NODE_PATH/bin $path)
