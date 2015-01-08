Dotfiles!
=========

This are my dotfiles!

For now they only include Vim and Git configs.

## Install

````sh
git clone https://github.com/franleplant/dotfiles ~/dotfiles
ln -s ~/dotfiles/.vimrc .vimrc
ln -s ~/dotfiles/.gitconfig .gitconfig
```

You also need to install Vundle to handle all the additional Vim plugins automatically.

- Install [Vundle](https://github.com/gmarik/Vundle.vim)
- Run inside Vim `:PluginInstall`


Vim uses [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) plugin, please read their 
docs to know what you need to run it properly
