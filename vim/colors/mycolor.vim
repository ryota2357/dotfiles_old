scriptencoding utf-8

hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name="mycolor"

" ---- :help group-name ---- "
"マーク(*)されている名前が優先グループ、その他はマイナーグループである。優先グループには、"syntax.vim" によりデフォルトのハイライト手法が定義されている。マイナーグループは優先グループにリンクされ、リンクした先と同じハイライト手法になる。ファイル "syntax.vim" が読込まれた後でコマンド ":highlight" を使えば、そのデフォルトを上書することができる。
"ハイライトグループ名には大文字小文字の区別がないことに注意。"String" と"string" はどちらも同じグループを意味する。
"以下の名前は予約されているのでグループ名として使用することはできない:
"	NONE   ALL   ALLBUT   contains   contained

" * コメント
hi Comment          guifg=#878787 guibg=NONE    guisp=NONE    gui=italic    ctermfg=102  ctermbg=NONE cterm=NONE

" * 定数
hi Constant         guifg=#ebf3f5 guibg=NONE    guisp=NONE    gui=NONE      ctermfg=195  ctermbg=NONE cterm=NONE
" 文字列定数: "これは文字列です"
hi String           guifg=#ff8700 guibg=NONE    guisp=NONE    gui=NONE      ctermfg=208  ctermbg=NONE cterm=NONE
" 文字例数: 'c', '\n'
hi Character        guifg=#ebf3f5 guibg=NONE    guisp=NONE    gui=NONE      ctermfg=196  ctermbg=NONE cterm=NONE
" 数値定数: 234, 0xff
hi Number           guifg=#00ff5f guibg=NONE    guisp=NONE    gui=NONE      ctermfg=47   ctermbg=NONE cterm=NONE
" 真偽値の定数: TTRUE, false
hi Boolean          guifg=#ebf3f5 guibg=NONE    guisp=NONE    gui=NONE      ctermfg=32   ctermbg=NONE cterm=NONE
" 不動小数点の定数: 2.3e10
hi Float            guifg=#00ff5f guibg=NONE    guisp=NONE    gui=NONE      ctermfg=47   ctermbg=NONE cterm=NONE

" * 変数名
hi Identifier       guifg=#375fff guibg=NONE    guisp=NONE    gui=NONE      ctermfg=69   ctermbg=NONE cterm=NONE
" 関数名(クラスメソッドを含む)
hi Function         guifg=#375fff guibg=NONE    guisp=NONE    gui=NONE      ctermfg=69   ctermbg=NONE cterm=NONE

" * 命令文
hi Statement        guifg=#ff87ff guibg=NONE    guisp=NONE    gui=NONE      ctermfg=213  ctermbg=NONE cterm=NONE
" if, then, else, endif, switch, その他
hi Conditional      guifg=#ff87ff guibg=NONE    guisp=NONE    gui=NONE      ctermfg=213  ctermbg=NONE cterm=NONE
" for, do, while, その他
hi Repeat           guifg=#ff87ff guibg=NONE    guisp=NONE    gui=NONE      ctermfg=213  ctermbg=NONE cterm=NONE
" case, default, その他
hi Label            guifg=#ffcc00 guibg=NONE    guisp=NONE    gui=NONE      ctermfg=222  ctermbg=NONE cterm=NONE
" sizeof, +, *,  その他
hi Operator         guifg=#ffd900 guibg=NONE    guisp=NONE    gui=NONE      ctermfg=220  ctermbg=NONE cterm=NONE
" その他キーワード
hi Keyword          guifg=#ffcc00 guibg=NONE    guisp=NONE    gui=NONE      ctermfg=220  ctermbg=NONE cterm=NONE
" try, catch, throw
hi Exception        guifg=#ffcc00 guibg=NONE    guisp=NONE    gui=NONE      ctermfg=220  ctermbg=NONE cterm=NONE

" * 一般的なプリプロセッサー命令
hi PreProc          guifg=#ffd700 guibg=NONE    guisp=NONE    gui=NONE      ctermfg=220  ctermbg=NONE cterm=NONE
" #include プリプロセッサー
hi Include          guifg=#ffd700 guibg=NONE    guisp=NONE    gui=NONE      ctermfg=220  ctermbg=NONE cterm=NONE
" #define プリプロセッサー
hi Define           guifg=#ffd700 guibg=NONE    guisp=NONE    gui=NONE      ctermfg=220  ctermbg=NONE cterm=NONE
" Defineと同値
hi Macro            guifg=#ffd700 guibg=NONE    guisp=NONE    gui=NONE      ctermfg=220  ctermbg=NONE cterm=NONE
" プリプロセッサーの #if, #else, #endif, その他キーワード
hi PreCondit        guifg=#ffd700 guibg=NONE    guisp=NONE    gui=NONE      ctermfg=220  ctermbg=NONE cterm=NONE

" * int, long, char, その他
hi Type             guifg=#00aaff guibg=NONE    guisp=NONE    gui=NONE      ctermfg=39   ctermbg=NONE cterm=NONE
" static, register, volatile, その他
hi StorageClass     guifg=#00afff guibg=NONE    guisp=NONE    gui=NONE      ctermfg=39  ctermbg=NONE cterm=NONE
" struct, union, enum, その他
hi Structure        guifg=#80a2e0 guibg=NONE    guisp=NONE    gui=NONE      ctermfg=39  ctermbg=NONE cterm=NONE
" typedef宣言
hi Typedef          guifg=#80a2e0 guibg=NONE    guisp=NONE    gui=NONE      ctermfg=39  ctermbg=NONE cterm=NONE

" * 特殊なシンボル
hi Special          guifg=#ff6811 guibg=NONE    guisp=NONE    gui=NONE      ctermfg=202  ctermbg=NONE cterm=NONE
" 特殊な文字定数
hi SpecialChar      guifg=#ffcc00 guibg=NONE    guisp=NONE    gui=NONE      ctermfg=220  ctermbg=NONE cterm=NONE
" この上で CTRL-] を使うことができる
hi Tag              guifg=#ffcc00 guibg=NONE    guisp=NONE    gui=NONE      ctermfg=220  ctermbg=NONE cterm=NONE
" 注意が必要な文字
hi Delimiter        guifg=#ffcc00 guibg=NONE    guisp=NONE    gui=NONE      ctermfg=220  ctermbg=NONE cterm=NONE
" コメント内の特記事項
hi SpecialComment   guifg=#ffcc00 guibg=NONE    guisp=NONE    gui=NONE      ctermfg=220  ctermbg=NONE cterm=NONE
" デバッグ命令
hi Debug            guifg=#ffcc00 guibg=NONE    guisp=NONE    gui=NONE      ctermfg=220  ctermbg=NONE cterm=NONE

" * 目立つ文章, HTMLリンク
hi Underlined       guifg=#f9f9ff guibg=#192224 guisp=#192224 gui=underline ctermfg=189  ctermbg=235  cterm=underline

" * (見た目上)空白, 不可視  |hl-Ignore|
"hi Ignore          guifg=        guibg=        guisp=        gui=          ctermfg=     ctermbg=     cterm=

" * エラーなど、なんらかの誤った構造
hi Error            guifg=#ebf3f5 guibg=#912C00 guisp=#912C00 gui=NONE      ctermfg=195  ctermbg=88   cterm=NONE

" * 特別な注意が必要なもの; 大抵はTODO FIXME XXXなど のキーワード
hi Todo             guifg=#f9f9ff guibg=#BD9800 guisp=#BD9800 gui=NONE      ctermfg=189  ctermbg=1    cterm=NONE


" ---- :help highlight-groups ----

" 以下はデフォルトのハイライトグループである。これらのグループはデフォルトでオプ ション 'highlight' によって使われる。ただしハイライトは 'background' の値に依 存することに注意。":highlight" コマンドで現在の設定を知ることができる。

" 'colorcolumn' で設定された列の表示に使われる
hi CursorColumn     guifg=NONE    guibg=#222E30 guisp=#222E30 gui=NONE      ctermfg=NONE ctermbg=236  cterm=NONE
" Conceal されたテキストの代わりに表示される代替文字の表示に使われる
"hi Conceal         guifg=        guibg=        guisp=        gui=          ctermfg=     ctermbg=     cterm=

" カーソル下の文字
hi Cursor           guifg=#5f8787 guibg=#ffffff guisp=#ffffff gui=NONE      ctermfg=66   ctermbg=15   cterm=NONE
" |language-mapping| が使用されているときのカーソルの下の文字 ('guicursor' を参照)
"hi lCursor         guifg=        guibg=        guisp=        gui=          ctermfg=     ctermbg=     cterm=
" Cursorと同じだが、IMEモードにいるとき使われる|CursorIM|。
hi cursorim         guifg=#506e73 guibg=#536991 guisp=#536991 gui=NONE      ctermfg=66   ctermbg=60   cterm=NONE
" 'cursorcolumn' がオンになっているときのカーソルがある画面上の桁
hi cursorcolumn     guifg=#fffeff guibg=NONE    guisp=#fffeff gui=NONE      ctermfg=NONE ctermbg=17   cterm=NONE
" 'cursorline' がオンになっているときのカーソルがある画面上の行
hi CursorLine       guifg=NONE    guibg=#222E30 guisp=#222E30 gui=NONE      ctermfg=NONE ctermbg=17   cterm=NONE

" ディレクトリ名(とリストにある特別な名前)
hi Directory        guifg=#80a2e0 guibg=NONE    guisp=NONE    gui=NONE      ctermfg=110  ctermbg=NONE cterm=NONE

" 差分モード: 追加された行
hi DiffAdd          guifg=NONE    guibg=#193224 guisp=#193224 gui=NONE      ctermfg=NONE ctermbg=236  cterm=NONE
" 差分モード: 変更された行
hi DiffChange       guifg=NONE    guibg=#492224 guisp=#492224 gui=NONE      ctermfg=NONE ctermbg=52   cterm=NONE
" 差分モード: 削除された行
hi DiffDelete       guifg=NONE    guibg=#192224 guisp=#192224 gui=NONE      ctermfg=NONE ctermbg=235  cterm=NONE
" 差分モード: 変更された行中の変更されたテキスト
hi DiffText         guifg=NONE    guibg=#492224 guisp=#492224 gui=NONE      ctermfg=NONE ctermbg=52   cterm=NONE

"EndOfBuffer	バッファ中で最終行以降の領域を埋めるための行 (~)。標準では、|hl-NonText|のようにハイライトされる。

" コマンドラインに現れるエラーメッセージ
hi ErrorMsg         guifg=#ebf3f5 guibg=#912C00 guisp=#912C00 gui=NONE      ctermfg=195  ctermbg=88   cterm=NONE

" 垂直分割したウィンドウの区切りとなる桁
hi VertSplit        guifg=#d8f587 guibg=#627362 guisp=#627362 gui=NONE      ctermfg=192  ctermbg=65   cterm=NONE

" 'foldcolumn'
hi FoldColumn       guifg=#506e73 guibg=#A1A6A8 guisp=#A1A6A8 gui=italic    ctermfg=66   ctermbg=248  cterm=NONE

" 目印|signs|が表示される行。
hi SignColumn       guifg=#506e73 guibg=#536991 guisp=#536991 gui=NONE      ctermfg=66   ctermbg=60   cterm=NONE

"'incsearch' のハイライト; ":s///c" で置換されたテキストにも使われる。
hi IncSearch        guifg=#506e73 guibg=#BD9800 guisp=#BD9800 gui=NONE      ctermfg=66   ctermbg=1    cterm=NONE

" ":number" と ":#" コマンドの行番号。'number' オプションか'relativenumber' オプションが設定されているときには"その表示に も使われる"。
hi LineNr           guifg=#969696 guibg=#0a0a0a guisp=#0a0a0a gui=NONE      ctermfg=246  ctermbg=232  cterm=NONE
" 'relativenumber' オプションが設定されているときのカーソル行の上の行番号。
"hi LineNrAbove      guifg=        guibg=        guisp=        gui=          ctermfg=     ctermbg=     cterm=
" 'relativenumber' オプションが設定されているときのカーソル行の下の行番号。
"hi LineNrBelow      guifg=        guibg=        guisp=        gui=          ctermfg=     ctermbg=     cterm=
" LineNr と同じだが 'cursorline' が設定され、'cursorlineopt' が "number" または "both" に設定されるか、rela
hi CursorLineNr     guifg=#fffeff  guibg=#0a0a0a guisp=#0a0a0a gui=NONE     ctermfg=15  ctermbg=232   cterm=NONE

"tivenumber" が設定されているときに現在行に使われる"。
" カーソル下の文字、または直後の文字が"括弧であるとき、その文字と対応する括弧に使われる。|pi_paren.txt|
hi MatchParen       guifg=#ffcc00 guibg=NONE    guisp=NONE    gui=NONE      ctermfg=NONE ctermbg=25   cterm=NONE

" 'showmode' のメッセージ (例. "-- INSERT --")
hi ModeMsg          guifg=#ffffff guibg=#192224 guisp=#192224 gui=NONE      ctermfg=15   ctermbg=235  cterm=NONE
" |more-prompt|
hi MoreMsg          guifg=#ffcc00 guibg=NONE    guisp=NONE    gui=NONE      ctermfg=220  ctermbg=NONE cterm=NONE

" ウィンドウの端の '@' と 'showbreak' で設定された文字など、実際のテキストには存在しない文字(例. 全角文字"が行末に収まらないとき ">" が表示される)"。
hi NonText          guifg=#87cccb guibg=NONE    guisp=NONE    gui=italic    ctermfg=116  ctermbg=NONE cterm=NONE

" 通常のテキスト*hl-Pmenu*
hi Normal           guifg=#ffffd7 guibg=#13131c guisp=#13131c gui=NONE      ctermfg=230  ctermbg=234  cterm=NONE

" ポップアップメニュー: 通常の項目。
hi PMenu            guifg=#ebebeb guibg=#969696 guisp=#969696 gui=NONE      ctermfg=255  ctermbg=238  cterm=NONE
" ポップアップメニュー: 選択されている項目。
hi PMenuSel         guifg=#f5f5f5 guibg=#0033ff guisp=#0033ff gui=NONE      ctermfg=255  ctermbg=27   cterm=NONE
" ポップアップメニュー: スクロールバー。
hi PMenuSbar        guifg=NONE    guibg=#848688 guisp=#848688 gui=NONE      ctermfg=NONE ctermbg=103  cterm=NONE
" ポップアップメニュー: スクロールバーのつまみ部分。
hi PMenuThumb       guifg=NONE    guibg=#a4a6a8 guisp=#a4a6a8 gui=NONE      ctermfg=NONE ctermbg=242  cterm=NONE

" ヒットエンタープロンプト|hit-enter|とyes/noクエスチョン
"hi Question        guifg=        guibg=        guisp=        gui=          ctermfg=     ctermbg=     cterm=

" quickfixウィンドウ内の現在の |quickfix| 項目。
"hi QuickFixLine    guifg=        guibg=        guisp=        gui=          ctermfg=     ctermbg=     cterm=

" 最後に検索した語のハイライト('hlsearch')を参照。強調されるべき同様の項目にも使用される。
hi Search           guifg=#506e73 guibg=#BD9800 guisp=#BD9800 gui=NONE      ctermfg=19   ctermbg=227  cterm=NONE

" ":map" でリストされるメタキーと特別なキー。テキスト中のunprintableな文字を表示するのにも使われる。 一般に: 実際とは異なる文字で表示されるテキスト
hi SpecialKey       guifg=#a2b9c0 guibg=NONE    guisp=NONE    gui=italic    ctermfg=109  ctermbg=NONE cterm=NONE

" スペルチェッカに認識されない単語。これは他のハイライトと同時に組み合わせられる。
hi SpellBad         guifg=#f9f9ff guibg=#192224 guisp=#192224 gui=underline ctermfg=189  ctermbg=235  cterm=underline
" 大文字で始まるべき単語。これは他のハイライトと同時に組み合わせられる。
hi SpellCap         guifg=#f9f9ff guibg=#192224 guisp=#192224 gui=underline ctermfg=189  ctermbg=235  cterm=underline
" スペルチェッカによって他の地域で使われると判断される単語。
hi SpellLocal       guifg=#f9f9ff guibg=#192224 guisp=#192224 gui=underline ctermfg=189  ctermbg=235  cterm=underline
" スペルチェッカによってまず使わないと判断される単語。これは他のハイライトと同時に組み合わせられる。
hi SpellRare        guifg=#f9f9ff guibg=#192224 guisp=#192224 gui=underline ctermfg=189  ctermbg=235  cterm=underline

" カレントウィンドウのステータスライン
hi StatusLine       guifg=#1c1c23 guibg=#6c6c6c guisp=#6c6c6c gui=NONE      ctermfg=235  ctermbg=242  cterm=NONE
" 非カレントウィンドウのステータスライン。
"   Note: これが "StatusLine" に等しい場合、カレントウィンドウのステータスラインに "^^^" が使われる。
hi StatusLineNC     guifg=#1c1c23 guibg=#6c6c6c guisp=#6c6c6c gui=italic    ctermfg=235  ctermbg=242  cterm=NONE
" |terminal| ウィンドウのカレントウィンドウのステータスライン
"hi StatusLineTerm   guifg=        guibg=        guisp=        gui=          ctermfg=     ctermbg=     cterm=
" |terminal| ウィンドウの非カレントウィンドウのステータスライン
"hi StatusLineTermNC guifg=        guibg=        guisp=        gui=          ctermfg=     ctermbg=     cterm=

" タブページの行の、アクティブでないタブページのラベル
hi TabLine          guifg=#f5f5f5 guibg=#5f5f5f guisp=#5f5f5f gui=NONE      ctermfg=255  ctermbg=59   cterm=NONE
" タブページの行の、ラベルがない部分
hi TabLineFill      guifg=#5f8787 guibg=#6c6c6c guisp=#6c6c6c gui=NONE      ctermfg=66   ctermbg=242  cterm=NONE
" タブページの行の、アクティブなタブページのラベル
hi TabLineSel       guifg=#323232 guibg=#cac864 guisp=#cac864 gui=NONE      ctermfg=236  ctermbg=185  cterm=NONE

" |terminal| ウィンドウ (|terminal-size-color| を参照)
"hi Terminal         guifg=        guibg=        guisp=        gui=          ctermfg=     ctermbg=     cterm=

" ":set all"、":autocmd" などによる出力のタイトル。
hi Title            guifg=#f5f5f5 guibg=#323232 guisp=#323232 gui=NONE      ctermfg=255  ctermbg=236  cterm=NONE

" ビジュアルモード選択
hi Visual           guifg=#506e73 guibg=#F9F9FF guisp=#F9F9FF gui=NONE      ctermfg=NONE ctermbg=24   cterm=NONE
" vimが "Not Owning the Selection" のときのビジュアルモード選択。
"   これをサポートしているのはX11GUI|gui-x11|と|xterm-clipboard|のみ。
hi VisualNOS        guifg=#506e73 guibg=#F9F9FF guisp=#F9F9FF gui=underline ctermfg=66   ctermbg=189  cterm=underline

" 警告メッセージ
hi WarningMsg       guifg=#ebf3f5 guibg=#912C00 guisp=#912C00 gui=NONE      ctermfg=6    ctermbg=238  cterm=NONE

" 'wildmenu' 補完における現在の候補
hi WildMenu         guifg=NONE    guibg=#A1A6A8 guisp=#A1A6A8 gui=NONE      ctermfg=NONE ctermbg=248  cterm=NONE

"'statusline' 構文によってステータスラインとルーラー('rulerformat' によって)中で9個のハイライトが使えるようになっている。その名前はUser1からUser9である。
"GUI使用時には、これらのグループを使ってメニューやスクロールバー、ツールチップ の色を設定することができる。これらにデフォルト値はない。これはWin32では利用できない。ここではhighlightの引数のうちfont, guibg, guifgの3つだけが効果を持つ。

" メニューのフォント、文字、背景。ツールバーにも使われる。使用可能なhighlightの引数: font, guibg, guifg.
"   NOTE: MotifとAthenaでは 'guifontset' が空かどうかにかかわらず、常に引数fontで実際のフォントセットを指定する。そしてそれが現在の|:language|に結び付けられる。
"hi Menu             guifg=        guibg=        guisp=        gui=          ctermfg=     ctermbg=     cterm=

" メインウィンドウのスクロールバーの文字と背景。使用可能なhighlightの引数: guibg, guifg.
"hi Scrollbar        guifg=        guibg=        guisp=        gui=          ctermfg=     ctermbg=     cterm=

" ツールチップのフォント、文字、背景。使用可能なhighlightの引数: font, guibg, guifg.
"   NOTE: MotifとAthenaでは 'guifontset' が空かどうかにかかわらず、常に引数fontで実際のフォントセットを指定する。そしてそれが現在の|:language|に結び付けられる。
"hi Tooltip          guifg=        guibg=        guisp=        gui=          ctermfg=     ctermbg=     cterm=

set background=dark
