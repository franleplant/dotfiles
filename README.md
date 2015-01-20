Dotfiles!
=========

This are my dotfiles!

For now they only include Vim and Git configs.

## Install

````sh
# Install Vundle (plugin manager)
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Download the dotfiles
git clone https://github.com/franleplant/dotfiles ~/dotfiles

# Link them!
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.tern-project ~/.tern-project

#Install all the Vim plugins
vim +PluginInstall +qall
```


### Additional steps

Vim uses [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) plugin, please read their 
docs to know what you need to run it properly

Vim uses [Tern.js](https://github.com/marijnh/tern_for_vim), run the following to complete its instalation
```sh
cd ~/.vim/bundle/tern_for_vim
npm install
```
