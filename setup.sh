#!/bin/sh
echo "SartSetUp..."
cd ~

# link
ln -s ~/dotfiles/vim/.vimrc ~/.vimrc
ln -s ~/dotfiles/vim/.dein ~/.dein
ln -s ~/dotfiles/vim/.gvimrc ~/.gvimrc
ln -snfv ~/dotfiles/vim/vimExtension ~/.vsvimrc
ln -snfv ~/dotfiles/vim/vimExtension ~/.ideavimrc
ln -snfv ~/dotfiles/vim/vimExtension ~/.xvimrc
ln -s ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/zsh/.zprofile ~/.zprofile
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc

# node.js
curl -sL install-node.now.sh/lts | zsh

# brew
brew install pcre2
brew install sqlite

brew install gmp

brew install perl
brew install tig
brew install carthage
brew install icu4c
brew install luajit
brew install pkg-config

brew install isl

brew install unibilium

brew install libevent
brew install mpfr
brew install python@3.8
brew install utf8proc

brew install libffi
brew install msgpack
brew install rbenv

brew install libmpc
brew install ncurses
brew install readline
brew install xz

brew install libtermkey


brew install libuv
brew install ripgrep
brew install gdbm
brew install libvterm

brew install gettext
brew install libyaml
brew install openssl@1.1


# gh setting
gh auth login

# My command
cd ~
gh repo clone 2357or/My-command

# C++ settings
mkdir -p C++
cd C++
gh repo clone 2357or/MyLibrary
gh repo clone atcoder/ac-library
mkdir -p Work
cd Work
touch a.cpp b.cpp c.cpp d.cpp e.cpp
cd ~



# XVim
cd ~/Library/Application\ Support/Developer/Shared/Xcode/Plug-ins/
git clone git://github.com/XVimProject/XVim2
sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer/
cd ~/Library/Application\ Support/Developer/Shared/Xcode/Plug-ins/XVim2/
make
echo -e "\n=================================================================\n"
echo "[通知]"
echo "XVim2 を有効にするには証明書(1年)を発行する必要があります。"
echo "https://github.com/XVimProject/XVim2/blob/master/SIGNING_Xcode.md"
echo "を参考に証明書を発行してください"
echo -e "\n================================================================="
echo -e "[All process is over]\n"
