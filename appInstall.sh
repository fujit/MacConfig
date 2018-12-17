 #!/bin/sh

# brewcaskのダウンロード先を/Applicationsに変更
echo export HOMEBREW_CASK_OPTS="--appdir=/Applications" >> ~/.bashrc
source ~/.bashrc

# Appをインストール
echo "Appをインストール"

# general
brew cask install 1password
brew cask install alfred
brew cask install amazon-drive
brew cask install amazon-music
brew cask install appcleaner
brew cask install calibre
brew cask install cheatsheet
brew cask install clipy
brew cask install firefox
brew cask install fluid
brew cask install flux
brew cask install google-backup-and-sync
brew cask install google-chrome
brew cask install google-japanese-ime
brew cask install inkdrop
brew cask install keka
brew cask install kindle
brew cask install music-manager
brew cask install qblocker
brew cask install skitch
brew cask install slack

# dev
brew cask install atom
brew cask install coteditor
brew cask install docker
brew cask install iterm2
brew cask install mamp
brew cask install teamsql
brew cask install vagrant
brew cask install virtualbox
brew cask install visual-studio-code

brew install git
brew install macvim
brew install rmtrash
brew install tree

# Mac App StoreのAppをインストール
echo "Mac App StoeのAppをインストール"

brew install mas
mas install 497799835 # Xcode
mas install 568494494 # Pocket
mas install 539883307 # LINE
