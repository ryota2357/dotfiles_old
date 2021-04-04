#!/bin/sh
echo "##-----------------------------------##"
echo "##          AppInstall.sh            ##"
echo "##-----------------------------------##"
echo "visual-studioのインストールではパスワードの入力が求められます"
echo "visual-studioのインストールを続けますか？[y/n]" yn
if [ $yn = y ]; then
    brew cask install visual-studio
fi
echo "visual-studioのインストールをスキップしました"
echo "12個のアプリケーションの自動インストールを開始します"
brew cask install google-chrome
brew cask install iterm2
brew cask install github
brew cask install unity-hub
brew cask install android-studio
brew cask install visual-studio-code
brew cask install blender
brew cask install autodesk-fusion360
brew cask install flutter
brew cask install discord
brew cask install macvim
brew cask install numi
