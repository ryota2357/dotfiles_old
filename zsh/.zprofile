#--------------------------------------------------------------#
##        set Unicode                                         ##
#--------------------------------------------------------------#
export LANG=ja_JP.UTF-8

#--------------------------------------------------------------#
##        PATH                                                ##
#--------------------------------------------------------------#
# 自作コマンド
export PATH=$HOME/My-command/bin:$PATH

# Youbube DL Music (自作)
export PATH=$HOME/Python/YoutubeDL-Music/bin:$PATH

# llvn (clangd)
export PATH="/usr/local/opt/llvm/bin:$PATH"

# vim
export PATH=/usr/local/bin:$PATH

# tmux
export PATH=$HOME/dotfiles/tmux/.tmux/bin:$PATH

# ruby (rbenv)
export PATH="/usr/local/opt/ruby/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"

# nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

# mono
export MONO_GAC_PREFIX="/usr/local"

# AtCoder-Library
#export CPLUS_INCLUDE_PATH=$HOME/C++/ac-library/atcoder:$CPLUS_INCLUDE_PATH

# Boost
export CPLUS_INCLUDE_PATH=/usr/local/Cellar/boost:$CPLUS_INCLUDE_PATH

# dart/flutter pub
export PATH=$HOME/.pub-cache/bin:$PATH
