# dotfiles


## 使用シェル

- zsh


# セットアップ

以下を実行
```sh
cd ~
sudo chown -R $USER /usr/local
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew install git
git clone https://github.com/2357or/dotfiles.git
cd ~/dotfiles
. ./setup.sh
```


## GitHub の鍵を作成

[ここを参考](https://qiita.com/shizuma/items/2b2f873a0034839e47ce)にしてインストール


## アプリケーションのインストール

セットアップを終えた上で以下を実行
```sh
cd ~/dotfiles
. ./AppInstall.sh
```


<br>


### Vim(dein)でプラグインが読み込まれない

キャッシュを削除することで回復した
```
:call dein#recache_runtimepath()
```

### dein管理下のプラグインのアップデート
```
:call dein#update()
```

# その他

XVim2 を有効にするには証明書(1 年)を発行する必要があるので、
https://github.com/XVimProject/XVim2/blob/master/SIGNING_Xcode.md
を参考に証明書を発行すること
