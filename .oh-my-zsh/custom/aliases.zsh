# Package management
## Install a package
alias xin='sudo xbps-install -S'
## Update packages
alias xup='sudo xbps-install -Su'
## Remove a package and its dependencies
alias xre='sudo xbps-remove -R'
## Remove unneeded dependencies
alias xcl='sudo xbps-remove -o'
## Search for a package
alias xse='xbps-query -Rs'
## Search for a package containing a file
alias xsf='xlocate'
## Show package information
alias xpi='xbps-query -RS'

# Commonly-edited dotfiles
alias vimrc="$EDITOR ~/.config/nvim/init.vim"
alias strc="$EDITOR ~/.suckless/st/config.h"
alias dwmrc="$EDITOR ~/.suckless/dwm/config.h"
alias zshrc="$EDITOR ~/.zshrc"
