#!/bin/sh

# Homebrewをインストール
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew tap caskroom/cask1

# brewcaskのダウンロード先を/Applicationsに変更
echo export HOMEBREW_CASK_OPTS="--appdir=/Applications" >> ~/.bashrc
source ~/.bashrc

touch ~/.zshrc
echo export HOMEBREW_CASK_OPTS="--appdir=/Applications" >> ~/.zshrc
source ~/.zshrc


####################
# App
####################

# general
brew cask install google-chrome
brew cask install firefox
brew cask install bitwarden
brew cask install alfred
brew cask install appcleaner
brew cask install clipy
brew cask install google-japanese-ime
brew cask install slack
brew cask install authy
brew cask install hyperswitch
brew cask install spotify
brew cask install notion

# developer
brew cask install docker
brew cask install iterm2
brew cask install virtualbox
brew cask install visual-studio-code

brew install yarn
brew install git
brew install neovim
brew install rmtrash
brew install tree
brew install zshrc
brew install zplug
brew install bat
brew install textql
brew install fzf
brew install tig
brew install exa
brew install ripgrep
brew install fd
brew install starship
brew install mycli
brew install pgcli

# Mac app
brew install mas
mas install 497799835  # Xcode
mas install 568494494  # Pocket
mas install 539883307  # LINE

####################
# font
####################
# Ricty
brew tap sanemat/font
brew install ricty
cp -f /usr/local/opt/ricty/share/fonts/Ricty*.ttf ~/Library/Fonts/
fc-cache -vf

brew tap caskroom/fonts
brew cask install font-myrica
brew cask install font-source-han-code-jp
brew cask install font-fira-code

# nerd 用のフォント
brew cask install font-hack-nerd-font
cd ~/Library/Fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf

# 標準シェルをzshに変更
echo /usr/local/bin/zsh >> /etc/shells
chsh -s /usr/local/bin/zsh

####################
# Vim
####################
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein

####################
# Go
####################
brew install go

####################
# Node.js
####################
brew install nodebrew
mkdir -p ~/.nodebrew/src
nodebrew install-binary latest
nodebrew use `nodebrew ls`

yarn global add \
  sort-package-json \
  svgo \
  markdownlint


####################
# Python
####################
brew install pyenv
