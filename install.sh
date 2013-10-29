#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

ESC_SEQ="\x1b["
COL_RESET=$ESC_SEQ"39;49;00m"
COL_GREEN=$ESC_SEQ"32;01m"
COL_BLUE=$ESC_SEQ"34;01m"
COL_CYAN=$ESC_SEQ"36;01m"

dir=~/.dotfiles                    # dotfiles directory
olddir=~/.dotfiles/_old            # old dotfiles backup directory
files="vimrc vim gitconfig"        # list of files/folders to symlink in homedir
                                   # bashrc vimrc vim zshrc oh-my-zsh private scrotwm.conf Xresources

# create dotfiles_old in homedir
mkdir -p $olddir

# change to the dotfiles directory
cd $dir

# move any existing dotfiles in homedir to dotfiles_old directory,
# then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files

for file in $files; do
    mv ~/.$file $olddir/
    echo -e $COL_CYAN"Creating symlink to"$COL_BLUE $file $COL_CYAN"in home directory."$COL_RESET
    ln -s $dir/$file ~/.$file
done

echo -e $COL_GREEN"Symlinks created"$COL_RESET

