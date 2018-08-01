#!/bin/sh

# Vim
brew install vim --with-override-system-vi1

# tree
brew install tree

# Java
brew tap caskroom/versions
brew cask install java

# /usr/libexec/java_homeで表示されたパスを$PATHに追加


# git
brew install git

# node
brew install nodebrew

# パスの設定
# nodebrew setup

# 安定版のインストール
nodebrew install-binary stable
nodebrew use stable
# npmの更新
npm update -g npm

# PHPのインストール
brew install php@7.1

# MySQLのインストール
brew install mysql

# パスを通す
echo 'export PATH=$PATH:/usr/local/opt/php@7.1/bin' >> ~/.bash_profile
echo 'export PATH=$PATH:/usr/local/opt/php@7.1/sbin' >> ~/.bash_profile
echo 'export PATH=$PATH:/usr/local/bin/mysql/sbin' >> ~/.bash_profile

# Laravel環境構築
# brew install composer
# echo export PATH=$PATH:~/.composer/vendor/bin:/usr/local/sbin >> ~/.bash_profile
