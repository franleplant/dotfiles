Dotfiles!
=========

This are my dotfiles!

For now they only include Vim and Git configs.

## Requirements

- Git (already comes with mac)
- [NVM (node.js)](https://github.com/nvm-sh/nvm)

```sh
# vim
brew install vim
# tmux
brew install tmux

# zsh (not required)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


```

## Install

````sh
# Download the dotfiles
git clone https://github.com/franleplant/dotfiles ~/dotfiles

# Run the install script!
# This will symlinc your dotfiles and run some Vim plugin required actions
~/dotfiles/install.sh
```

