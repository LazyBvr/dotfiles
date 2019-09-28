# LazyBvr's dotfiles
Here's my collection of configuration files.
Feel free to poke around but keep in mind that you'd probably not want to copy these verbatim to your system.

## Configuration installer
This repo contains the `install` script that can be used to symlink the files, backing up all the existing ones.
Use `-f` or `--force` option to overwrite the old files without asking.
Once again, you'd probably not want to execute this script ;)

## Provided configuration
* `fetchmail`: a Google Mail account
* `mailcap`: nothing fancy
* `neomutt`: a Google Mail account, GPG config and some random color scheme
* `npm`: nothing fancy
* `zsh`: [OMZ](https://github.com/robbyrussell/oh-my-zsh)-based, some aliases, vi-mode, a neovim fix and [powerlevel9k](https://github.com/Powerlevel9k/powerlevel9k) prompt
* `rtorrent`: nothing fancy
* `st`: `config.h` - requires [clipboard](http://st.suckless.org/patches/clipboard/), [nordtheme](http://st.suckless.org/patches/nordtheme/) and [scrollback](http://st.suckless.org/patches/scrollback/)
* `dwm`: `config.h`
* `xinit`-related stuff
* `fish`: check out [my blog post](https://lazybvr.github.io/articles/2019-09-21-a-shell-for-the-90s.html) for a sneak peak
* `GTK 3`: font settings, nothing more
* `neovim`: some basic settings, [vim-plug](https://github.com/junegunn/vim-plug) with an assortment of plugins, a few language servers configured
* `ranger`: image preview - requires `w3m`
