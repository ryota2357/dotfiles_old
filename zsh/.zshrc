PROMPT="%F{cyan}%T %F{yellow}%~ %F{reset_color}$"

#--------------------------------------------------------------#
##        set 256color                                        ##
#--------------------------------------------------------------#
TERM=xterm-256color

#--------------------------------------------------------------#
##        zsh Options                                         ##
#--------------------------------------------------------------#
bindkey -v
# zsh補完
autoload -U compinit && compinit
# カラー設定
autoload -Uz colors && colors
#単語の入力途中でもTab補完を有効化
setopt complete_in_word
# 補完候補をハイライト
zstyle ':completion:*:default' menu select=1
# キャッシュの利用による補完の高速化
zstyle ':completion::complete:*' use-cache true
#大文字、小文字を区別せず補完する
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# 補完リストの表示間隔を狭くする
setopt list_packed
# cdなしでディレクトリを移動
setopt auto_cd
# cdでディレクトリの移動履歴表示
setopt auto_pushd
# コマンドのうち間違え防止
setopt correct

#--------------------------------------------------------------#
##        fzf settings                                        ##
#--------------------------------------------------------------#
export PATH="$PATH:$HOME/.fzf/bin"
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
export FZF_DEFAULT_OPTS='--height 30% --border'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#--------------------------------------------------------------#
##        function                                            ##
#--------------------------------------------------------------#
ojt(){ oj t -d ./$1/tests }

#--------------------------------------------------------------#
##        alias                                               ##
#--------------------------------------------------------------#
alias c='clang++ -std=c++17 -stdlib=libc++ -Wall -O2 -I/usr/local/include'
alias py='python3'
alias a='./a.out'
alias vi='vim'
alias ta='tmux a -t'
alias tn='tmux new -s'
alias t='
if [[ ! -n $TMUX ]]; then
  # get the IDs
  ID="`tmux list-sessions`"
  if [[ -z "$ID" ]]; then
    tmux new-session
  fi
  create_new_session="Create New Session"
  ID="$ID\n${create_new_session}:"
  ID="`echo $ID | $PERCOL | cut -d: -f1`"
  if [[ "$ID" = "${create_new_session}" ]]; then
    tmux new-session
  fi
  tmux attach-session -t "$ID"
fi'
