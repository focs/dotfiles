#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/.dotfiles
# Taken from: http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
############################

########## Variables

dir=~/.dotfiles                    # dotfiles directory
olddir=~/.dotfiles_old             # old dotfiles backup directory
files="vimrc"    # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
if [ ! -d "$olddir" ]; then
  echo "Creating $olddir for backup of any existing dotfiles in ~"
  mkdir -p $olddir
  echo "...done"
else
  echo "$olddir already exists"
fi

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
    if [ -f ~/.$file ]; then
        echo "Moving any existing dotfiles from ~ to $olddir"
        mv ~/.$file $olddir
    fi 

    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done
