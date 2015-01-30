#!/usr/bin/env bash


# Install Vundle (plugin manager)
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim


# Symlink the dotfiles
for file in ./.[!.]*; do
    if [ ! -d "$file" ]; then
        # Symbolic and interactive
        ln -si ~/dotfiles/$file ~/$file
    fi
done



#Install all the Vim plugins
vim +PluginInstall +quitall


# Finish the install process for tern
cd ~/.vim/bundle/tern_for_vim
npm install


# Finish YCM installation
# Checkout https://github.com/Valloric/YouCompleteMe for more details
cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer
