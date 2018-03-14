#!/bin/sh

sudo apt-get install terminator

sudo apt-get install zsh

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf

mkdir ~/.fonts/

mv PowerlineSymbols.otf ~/.fonts/

mkdir -p .config/fontconfig/conf.d

fc-cache -vf ~/.fonts/

mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

nano ~/.zshrc

export TERM="xterm-256color"


