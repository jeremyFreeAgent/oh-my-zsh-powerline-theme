#!/bin/sh

if [ ! -d ~/.oh-my-zsh ]
	then mkdir ~/.oh-my-zsh
fi

echo "Creating symlink from here to your oh-my-zsh themes path..."

successmsg="
Done ! (the symlink is ~/.oh-my-zsh/themes/powerline.zsh-theme)

----------------------------------------------------------------------------------

Options:
All options must be overridden in your .zshrc file.
See README.md for more info.

----------------------------------------------------------------------------------

Requirements:
Vim Powerline patched font: See Powerline for vim for more info.
Z shell (zsh): See oh-my-zsh for more info.
Make sure terminal is using 256-colors mode with export TERM=\"xterm-256color\"".

errormsg="
Uh oh! Couldn't create symlink ~/.oh-my-zsh/themes/powerline.zsh-theme
Check and see if you have permission to write to that directory."

ln -f powerline.zsh-theme ~/.oh-my-zsh/themes/powerline.zsh-theme

if [ $? = 0 ]
	then echo "$successmsg"
	else echo "$errormsg"
fi
