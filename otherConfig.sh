#!/bin/sh

# aliasの設定
echo "alias ll='ls -lhF'" >> ~/.bash_profile
echo "alias la='ls -aF'" >> ~/.bash_profile
echo "alias mkdir='mkdir -p'" >> ~/.bash_profile
echo "alias cp='cp -Riv'" >> ~/.bash_profile
source ~/.bash_profile


# Ricty
brew tap sanemat/font
brew install ricty
cp -f /usr/local/opt/ricty/share/fonts/Ricty*.ttf ~/Library/Fonts/
fc-cache -vf

# zshインストール
# brew install zsh zsh-autosuggestions zsh-completions zsh-syntax-highlighting colordiff
# which -a zsh
# sudo -- sh -c 'echo '/usr/local/bin/zsh' >> /etc/shells'
# chsh -s /usr/local/bin/zsh
