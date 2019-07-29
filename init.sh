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
brew cask install brave-browser
brew cask install opera
brew cask install 1password
brew cask install bitwarden
brew cask install alfred
brew cask install amazon-music
brew cask install appcleaner
brew cask install cheatsheet
brew cask install clipy
brew cask install flux
brew cask install google-japanese-ime
brew cask install kindle
brew cask install qblocker
brew cask install slack
brew cask install thunderbird

# developer
brew cask install docker
brew cask install iterm2
brew cask install virtualbox
brew cask install visual-studio-code
brew cask install owasp-zap

brew install git
brew install macvim
brew install rmtrash
brew install tree
brew install zshrc
brew install bat
brew install textql
brew install jpegoptim

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

# 標準シェルをzshに変更
echo /usr/local/bin/zsh >> /etc/shells
chsh -s /usr/local/bin/zsh

####################
# PHP
####################

# Composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
chmod 777 /usr/local/bin/composer

# php-cs-fixer
composer global require friendsofphp/php-cs-fixer
