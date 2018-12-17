#!/bin/sh

# bash_profileを作成
touch ~/.bash_profile

# Homebrewをインストール
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew -v

. appInstall.sh
. otherConfig.sh
