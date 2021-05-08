"--------------------------------------------------------------"
"         shell                                                "
"--------------------------------------------------------------"
"{{{
set shell=/bin/zsh
"}}}

"--------------------------------------------------------------"
"         設定                                                 "
"--------------------------------------------------------------"
"{{{
" 編集中のファイルが他で書き換えられたら自動で読み直す
set autoread

" ヤンクをクリップボードへ繋ぐ
set clipboard+=unnamed

" ビープ音を消す
set belloff=all

" スワップファイルを生成しない
set noswapfile

" encoding
set encoding=utf8
scriptencoding utf8
set fileencoding=utf-8
set termencoding=utf8
set fileencodings=utf-8,ucs-boms,euc-jp,ep932
set fileformats=unix,dos,mac
set ambiwidth=double
set nobomb
set t_Co=256
"}}}


"--------------------------------------------------------------"
"         表示                                                 "
"--------------------------------------------------------------"
"{{{
" ファイルのパス情報等を表示
set title

" 行番号
set number

" 括弧入力時の対応する括弧を表示
set showmatch
hi MatchParen ctermfg=LightGreen ctermbg=blue

" ステータスラインを常に表示
set laststatus=2

" コマンドラインの補完
set wildmode=list:longest

" 現在行のハイライトを有効
set cursorline

" スクロールの余裕を確保
set scrolloff=3

" {{{ と }}} で囲まれた範囲を折りたたむ
set foldmethod=marker

" カーソル制御
if has('vim_starting')
    " 挿入モード時に非点滅の縦棒タイプのカーソル
    let &t_SI .= "\e[6 q"
    " ノーマルモード時に非点滅のブロックタイプのカーソル
    let &t_EI .= "\e[2 q"
    " 置換モード時に非点滅の下線タイプのカーソル
    let &t_SR .= "\e[4 q"
endif
"}}}


"--------------------------------------------------------------"
"         インデント                                           "
"--------------------------------------------------------------"
"{{{
" タブをスペースに展開する
set expandtab

" タブの画面上での幅
set tabstop=4

" 連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set softtabstop=4

" smartindentで増減する幅
set shiftwidth=4

" 自動的にインデントする
set autoindent

" 改行時に前の行の構文をチェックし次の行のインデントを増減する
set smartindent

"新しい行を作った時に高度な自動インデントを行う
set smarttab
"}}}


"--------------------------------------------------------------"
"         検索                                                 "
"--------------------------------------------------------------"
"{{{
" 検索ワードの最初の文字を入力した時点で検索を開始する
set incsearch

" 検索パターンにおいて大文字と小文字を区別しない
set ignorecase

" 検索結果をハイライト表示する
set hlsearch

" 検索結果ハイライトを ESC*2 で非表示にする
nnoremap <ESC><ESC> :nohl<CR>

"全角スペースをハイライト表示
function! ZenkakuSpace()
    highlight ZenkakuSpace cterm=reverse ctermfg=DarkMagenta gui=reverse guifg=DarkMagenta
endfunction

if has('syntax')
    augroup ZenkakuSpace
        autocmd!
        autocmd ColorScheme       * call ZenkakuSpace()
        autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
    augroup END
    call ZenkakuSpace()
endif
"}}}


"--------------------------------------------------------------"
"         操作                                                 "
"--------------------------------------------------------------"
"{{{
" 挿入モードでバックスペース削除を有効
set backspace=indent,eol,start

" 行末の1文字先までカーソルを移動可能に
set virtualedit=onemore

" 入力中のコマンドを表示する
set showcmd

" コマンドモードでTabキーによるファイル名を補完する
set wildmenu

" マウス操作を有効にする
set mouse=a

" カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]

" 変更中のファイルでも、保存しないで他のファイルを表示
set hidden

" 保存するコマンド履歴の数
set history=100

" 補完挙動
set completeopt=menuone,noinsert
set completeopt-=menu
"}}}


"--------------------------------------------------------------"
"         キーバインド                                         "
"--------------------------------------------------------------"
"{{{
" ノーマルモードでエンターキー改行
noremap <CR> i<CR><ESC>

" バックスペース削除
noremap <BS> h"_x

" xで削除した時はヤンクしない
vnoremap x "_x
nnoremap x "_x

" 折り返し時に表示行単位での移動できるように
nnoremap j gj
nnoremap k gk

" @@ でエスケープキー
inoremap <silent> @@ <ESC><Right>
vnoremap <silent> @@ <ESC><Right>

" Q で行頭に移動
nnoremap Q ^
" P で行末に移動
nnoremap P $l

" 行を移動
nnoremap <C-Up> "zdd<Up>"zP
nnoremap <C-Down> "zdd"zp

" 複数行を移動
vnoremap <C-Up> "zx<Up>"zP`[V`]
vnoremap <C-Down> "zx"zp`[V`]

" ビジュアルモードで連続ペーストできるように
xnoremap <expr> p 'pgv"'.v:register.'y`>'

" 補完窓の表示、操作
inoremap <expr><C-n> pumvisible() ? "<Down>" : "<C-n>"
inoremap <expr><C-p> pumvisible() ? "<Up>" : "<C-p>"

" 画面分割
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap ss :<C-u>sp<CR><C-w>j"
nnoremap sv :<C-u>vs<CR><C-w>l

" 補完表示時のEnterで改行をしない
inoremap <expr><CR>  pumvisible() ? "<C-y>" : "<CR>"

" カーソル下の単語をハイライトしてから置換する
nmap # <Space><Space>:%s/<C-r>///g<Left><Left>

" カッコ補完
inoremap { {}<Left>
inoremap {<Enter> {<CR>}<ESC><S-o>
inoremap ( ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>
inoremap () ()
inoremap {} {}

" "",''補完
inoremap " ""<Left>
inoremap ' ''<Left>

" ,でのスペース補完
inoremap , ,<Space>
"}}}
""""""""""""""""""""""""""""""""""""""""""
" emacsキーバインド
""""""""""""""""""""""""""""""""""""""""""
"{{{
"imap <C-p> <Up>
"imap <C-n> <Down>
imap <C-b> <Left>
imap <C-f> <Right>
imap <C-a> <ESC>^i
imap <C-e> <End>
imap <C-d> <Del>
imap <C-h> <BS>

cmap <C-p> <Up>
cmap <C-n> <Down>
cmap <C-b> <Left>
cmap <C-f> <Right>
cmap <C-a> <Home>
cmap <C-e> <End>
cmap <C-d> <Del>
"}}}


"--------------------------------------------------------------"
"         自作コマンド                                         "
"--------------------------------------------------------------"
"{{{
source ~/dotfiles/vim/vimScript/CompileInCommandMode.vim
source ~/dotfiles/vim/Templates/script/TemplatesSettter.vim
source ~/dotfiles/vim/vimScript/convertHTML.vim

command! Toat %s/\[/\.at(/g | %s/\]/\)/g | w
"}}}


"--------------------------------------------------------------"
"         nvim用設定                                           "
"--------------------------------------------------------------"
"{{{
if has('nvim')
    " deoplete.nvimの設定
    let g:deoplete#enable_at_startup = 1
endif
"}}}


"--------------------------------------------------------------"
"         plugin manager (dein.vim)                            "
"--------------------------------------------------------------"
"{{{
if &compatible
  set nocompatible
endif

" プラグインがインストールされるディレクトリ
let s:dein_dir = expand('~/.vim/bundles')

" dein.vim本体
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

" tomlセット
let s:toml_dir=expand('~/.dein/')
let s:toml=s:toml_dir . 'dein.toml'
let s:toml_lazy=s:toml_dir . 'dein-lazy.toml'

" プラグインのロード
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  call dein#load_toml(s:toml)
  call dein#load_toml(s:toml_lazy, {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

" インストールしていないプラグインがあればインストールを実行
if dein#check_install()
  call dein#install()
endif
"}}}
