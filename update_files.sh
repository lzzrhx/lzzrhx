#!/bin/bash

#colors
mkdir -p ~/Other/git/dotfiles/.colors
rsync -u -r ~/.colors/ ~/Other/git/dotfiles/.colors/ &&

#.config folder
mkdir -p ~/Other/git/dotfiles/.config

#wallpapers
mkdir -p ~/Other/git/dotfiles/.wallpapers
rsync -u -r ~/.wallpapers/ ~/Other/git/dotfiles/.wallpapers/ &&

#cmus
mkdir -p ~/Other/git/dotfiles/.config/cmus
rsync -u ~/.config/cmus/autosave ~/Other/git/dotfiles/.config/cmus/autosave &&
rsync -u ~/.config/cmus/console-cowboy.theme ~/Other/git/dotfiles/.config/cmus/console-cowboy.theme &&

#greg
mkdir -p ~/Other/git/dotfiles/.config/greg
rsync -u ~/.config/greg/greg.conf ~/Other/git/dotfiles/.config/greg/greg.conf &&

#i3
mkdir -p ~/Other/git/dotfiles/.config/i3
rsync -u ~/.config/i3/config ~/Other/git/dotfiles/.config/i3/config &&
rsync -u ~/.config/i3/i3blocks.conf ~/Other/git/dotfiles/.config/i3/i3blocks.conf &&
mkdir -p ~/Other/git/dotfiles/.config/i3/blocks
rsync -u -r ~/.config/i3/blocks/ ~/Other/git/dotfiles/.config/i3/blocks/ &&
mkdir -p ~/Other/git/dotfiles/.config/i3/scripts
rsync -u -r ~/.config/i3/scripts/ ~/Other/git/dotfiles/.config/i3/scripts/ &&

#nvim
mkdir -p ~/Other/git/dotfiles/.config/nvim
rsync -u ~/.config/nvim/init.vim ~/Other/git/dotfiles/.config/nvim/init.vim &&
mkdir -p ~/Other/git/dotfiles/.config/nvim/colors
rsync -u ~/.config/nvim/colors/console-cowboy.vim ~/Other/git/dotfiles/.config/nvim/colors/console-cowboy.vim &&
mkdir -p ~/Other/git/dotfiles/.config/nvim/autoload/airline/themes
rsync -u ~/.config/nvim/autoload/airline/themes/console_cowboy.vim ~/Other/git/dotfiles/.config/nvim/autoload/airline/themes/console_cowboy.vim &&

#compton
rsync -u ~/.config/.compton.conf ~/Other/git/dotfiles/.config/.compton.conf &&

#user-dirs
rsync -u ~/.config/user-dirs.dirs ~/Other/git/dotfiles/.config/user-dirs.dirs &&

#irssi
mkdir -p ~/Other/git/dotfiles/.irssi
#rsync -u ~/.irssi/config ~/Other/git/dotfiles/.irssi/config &&
rsync -u ~/.irssi/console-cowboy.theme ~/Other/git/dotfiles/.irssi/console-cowboy.theme &&
mkdir -p ~/Other/git/dotfiles/.irssi/scripts/autorun
rsync -u -r ~/.irssi/scripts/ ~/Other/git/dotfiles/.irssi/scripts/ &&

#fonts
mkdir -p ~/Other/git/dotfiles/.local/share/fonts
rsync -u -r ~/.local/share/fonts/ ~/Other/git/dotfiles/.local/share/fonts/ &&

#mplayer
mkdir -p ~/Other/git/dotfiles/.mplayer
rsync -u ~/.mplayer/config ~/Other/git/dotfiles/.mplayer/config &&

#ncmpcpp
mkdir -p ~/Other/git/dotfiles/.ncmpcpp
rsync -u ~/.ncmpcpp/config ~/Other/git/dotfiles/.ncmpcpp/config &&

#apvlvrc
rsync -u ~/.apvlvrc ~/Other/git/dotfiles/.apvlvrc &&

#bash
rsync -u ~/.bashrc ~/Other/git/dotfiles/.bashrc &&

#mutt
rsync -u ~/.muttrc ~/Other/git/dotfiles/.muttrc &&

#xresources
rsync -u ~/.Xresources ~/Other/git/dotfiles/.Xresources
