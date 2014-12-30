#!/bin/sh

FILES="gitconfig vimrc vim zshrc aliases gvimrc"

for f in $FILES; do
  ln -fs $PWD/$f ~/.$f
done
