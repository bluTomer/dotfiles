# Dotfiles
Built as a python development environment using neovim and zsh

## Installation
The setup script should cover all needed installs for this config (and a few personal additions)
```
git clone git@github.com:bluTomer/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
sh setup.sh
```

## TODO
* Test `setup.sh` and make sure it covers the install well
* Remove `which-key` usage and transform to regular keymaps
* Improve performance, current state of scrolling isn't smooth enough
* Test out [YouCompleteMe](https://github.com/ycm-core/YouCompleteMe) as a replacement for COC
* Go over `coc-settings.json` if we end up choosing it
* `vim-surround` isn't working properly
* Make FZF use a bottom panel instead of a floating one
* Brighten the comments color in the nord theme
