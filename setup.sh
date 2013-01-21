#!/bin/zsh

dotfilesdir=$HOME/dotfiles

symlink_if_not_present()
{
    target=$1
    source=$2
    if [[ -a $target ]];
    then
      echo "Not symlinking ${target} since it already exists"
    else
      echo "Symlinking ${target} to ${source}"
      ln -s ${source} ${target}
    fi
}

symlink_if_not_present ~/.zshenv $dotfilesdir/zsh/zshenv.zsh
symlink_if_not_present ~/.zshrc $dotfilesdir/zsh/zshrc.zsh
symlink_if_not_present ~/.emacs $dotfilesdir/emacs/dotemacs.el

