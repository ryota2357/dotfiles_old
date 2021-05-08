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

# gh setting
gh auth login

# My command
cd ~
gh repo clone ryota2357/My-command

# C++ settings
mkdir -p C++
cd C++
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
