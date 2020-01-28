Dotfiles!
=========

This are my dotfiles!

For now they only include Vim and Git configs.

## Requirements

- Git (already comes with mac)

```sh
# cmake (used by ycm)
brew install cmake
# vim
brew install vim && brew install macvim
# node
brew install node
# tmux
brew install tmux
# rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

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

