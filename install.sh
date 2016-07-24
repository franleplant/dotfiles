#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo ""
echo ""
echo ""
echo "------------------"
echo "WELCOME! Installing dotfiles"
echo "------------------"

echo ""
echo "Notes:"
echo "- Make sure you have Vim > 7.4"
echo "- Rust src should be cloned into /usr/local/rust/src/"
echo ""


echo "Checking dependencies..."
if ! type "node" > /dev/null; then
  echo "Node.js is not installed"
fi

if ! type "git" > /dev/null; then
  echo "git is not installed"
fi

if ! type "rustc" > /dev/null; then
  echo "rust is not installed"
fi

if ! type "racer" > /dev/null; then
  echo "racer is not installed"
fi
echo ""
echo "Done!"
echo ""


echo "Installing Vim plug (plugin manager)"
echo ""


echo "Symlinking dotfiles interactively"
echo ""
for file in $DIR/.[!.]*; do
    if [ ! -d "$file" ]; then
        # Symbolic and interactive
        ln -si $DIR/$file ~/$file
    fi
done



echo "Installing all Vim plugins (It will take a while)"
vim +PlugInstall +quitall



