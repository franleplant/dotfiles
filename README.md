Dotfiles!
=========

This are my dotfiles!

For now they only include Vim and Git configs.

## Install

````sh
git clone url ~/dotfiles
ln -s ~/dotfiles/.vimrc .vimrc
ln -s ~/dotfiles/.gitconfig .gitconfig
```

You also need to install Vundle to handle all the aditional Vim plugins automatically.

- Install [Vundle](https://github.com/gmarik/Vundle.vim)
- Run inside Vim `:PluginInstall`
