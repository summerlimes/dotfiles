#!/bin/bash

# Copying necessary files
zsh_home="${HOME}"
nvim_home="${HOME}/.config/nvim"
tmux_home="${HOME}/.tmux"
xsession_home="${HOME}"


# BUNDLES
# list of options
# OSX: zsh, nvim, 
# Arch: 
# Ubuntu:

bundle_arch=( "zsh" "nvim" "tmux" "xsession" "redshift" "feh" "fzf" "ripgrep" "fasd" "base16" "rsync" "scrot" "rofi" "compton" "i3-gaps" )
bundle_OSX=( "zsh" "nvim" "tmux" "fzf" "ripgrep" "fasd" "base16" )
buddle_custom=( "zsh" )

for module in ${bundle_arch[@]}
do
	echo ${module} 
done

# zplug
# curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh| zsh

# vim plug for neovim
# curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
#    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# fasd
git clone https://github.com/clvv/fasd $HOME
cd ~/fasd
make install
cd ..
rm -rf fasd

#base 16
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

# tpm for tmux
# git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
