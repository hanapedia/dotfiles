# My Dotfiles
For installation on new machine, run:
```sh
echo ".cfg" >> .gitignore
git clone --bare git@github.com:hanapedia/dotfiles.git $HOME/.cfg
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
config checkout
```

On new machines consider using `minimal` branch.
```sh
echo ".cfg" >> .gitignore
git clone --bare -b minimal git@github.com:hanapedia/dotfiles.git $HOME/.cfg
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
config checkout
```

## What's included
- Configuration for neovim (`.config/nvim`)
    - [packer](https://github.com/wbthomason/packer.nvim) must be installed for package management.
- Configuration for fish (`.config/fish`)
    - [fisher](https://github.com/jorgebucaran/fisher) must be installed for package management.
- Configuration for tmux
