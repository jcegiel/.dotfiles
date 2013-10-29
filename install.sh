#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/.dotfiles                    # dotfiles directory
olddir=~/.dotfiles/_old            # old dotfiles backup directory
files=".vimrc .vim"    		   # list of files/folders to symlink in homedir
  				   # bashrc vimrc vim zshrc oh-my-zsh private scrotwm.conf Xresources
##########

# create dotfiles_old in homedir
mkdir -p $olddir

# change to the dotfiles directory
cd $dir

# move any existing dotfiles in homedir to dotfiles_old directory, 
# then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files

for file in $files; do
    mv ~/$file $olddir/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/$file
done

echo -e "Symlinks created"

