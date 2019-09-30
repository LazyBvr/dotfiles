export CC=gcc
export CXX=g++
# use the Neovim wrapper defined in ~/.oh-my-zsh/custom
export EDITOR=vim
export GOPATH=~/Projekty/go
# store Node stuff out of plain sight
export NODE_PATH=~/.local/share/node
# make UTF-8 in Perl actually work
export PERL_UNICODE=SDL

typeset -U path
path=(~/.local/bin $GOPATH/bin $NODE_PATH/bin $path)
