#!/bin/sh

# Homebrewをインストール
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

cp ./.Brewfile ~/
brew bundle --global

# Ricty
cp -f /usr/local/opt/ricty/share/fonts/Ricty*.ttf ~/Library/Fonts/
fc-cache -vf

# nerd 用のフォント
brew cask install font-hack-nerd-font
cd ~/Library/Fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf

# 標準シェルをzshに変更
echo /usr/local/bin/zsh >> /etc/shells
chsh -s /usr/local/bin/zsh

####################
# Vim
####################

# dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein

####################
# Node.js
####################
mkdir -p ~/.nodebrew/src
nodebrew install-binary latest
nodebrew use `nodebrew ls`
