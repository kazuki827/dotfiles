"--------------------------------------------------------------
" shell
"--------------------------------------------------------------
set shell=/usr/local/bin/zsh


"--------------------------------------------------------------
" base
"--------------------------------------------------------------
" 行番号を表示
set number

set nobomb
set t_Co=256

" スワップファイルの作成先を変更
set noswapfile

" ヤンクをクリップボードへ繋ぐ
set clipboard=unnamed

" ビープ音を消す
set belloff=all

" タイトル系
set title


"--------------------------------------------------------------
" encoding
"--------------------------------------------------------------
" ファイル読み込み時の文字コード
set encoding=utf8

" Vim script内でマルチバイト文字を使う場合の設定
scriptencoding utf8

" 保存時の文字コード
set fileencoding=utf-8

" 
set termencoding=utf8

" 読み込み時の文字コードの自動判別. 左側が優先
set fileencodings=utf-8,ucs-boms,euc-jp,ep932

" 改行コードの自動判別. 左側が優先
set fileformats=unix,dos,mac

" □や○文字が崩れる問題を解決
set ambiwidth=double


"--------------------------------------------------------------
" tab indent
"--------------------------------------------------------------
" タブ入力を複数の空白入力に置き換える
set expandtab

" 画面上でタブ文字が占める幅
set tabstop=2

" 連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set softtabstop=2

" 改行時に前の行のインデントを継続する
set autoindent

" 改行時に前の行の構文をチェックし次の行のインデントを増減する
set smartindent

" smartindentで増減する幅
set shiftwidth=2


"--------------------------------------------------------------
" string search
"--------------------------------------------------------------
" インクリメンタルサーチ. １文字入力毎に検索を行う
set incsearch

" 検索パターンに大文字小文字を区別しない
set ignorecase

" 検索パターンに大文字を含んでいたら大文字小文字を区別する
set smartcase

"  検索結果をハイライト
set hlsearch

" ESCキー2度押しでハイライトの切り替え
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>


"--------------------------------------------------------------
" cursor
"--------------------------------------------------------------
" カーソルの左右移動で行末から次の行の行頭への移動が可能になる
set whichwrap=b,s,h,l,<,>,[,],~

" カーソルラインをハイライト
set cursorline

" 行が折り返し表示されていた場合、行単位ではなく表示行単位でカーソルを移動する
nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk

" 挿入モードでバックスペース削除を有効
set backspace=indent,eol,start


"--------------------------------------------------------------
" brackets / tag jump
"--------------------------------------------------------------
" 括弧の対応関係を一瞬表示する
set showmatch

" Vimの「%」を拡張する
" HTMLタグやRubyのdef...endなども%で対応するタグにジャンプ可
source $VIMRUNTIME/macros/matchit.vim


"--------------------------------------------------------------
" command completion
"--------------------------------------------------------------
" コマンドモードの補完
set wildmenu

" 保存するコマンド履歴の数
set history=5000


"--------------------------------------------------------------
" mouse activation
"--------------------------------------------------------------
if has('mouse')
    set mouse=a
    if has('mouse_sgr')
        set ttymouse=sgr
    elseif v:version > 703 || v:version is 703 && has('patch632')
        set ttymouse=sgr
    else
        set ttymouse=xterm2
    endif
endif


"--------------------------------------------------------------
" paste
"--------------------------------------------------------------
" クリップボードからペーストする時だけインデントしない設定
if &term =~ "xterm"
    let &t_SI .= "\e[?2004h"
    let &t_EI .= "\e[?2004l"
    let &pastetoggle = "\e[201~"

    function XTermPasteBegin(ret)
        set paste
        return a:ret
    endfunction

    inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
endif


"------------------------------------------------------------------
" key binding
"------------------------------------------------------------------

" xで削除した時はヤンクしない
vnoremap x "_x
nnoremap x "_x

" 現在のバッファ削除
nnoremap bd :bd<CR>

" 括弧の補完
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap (<Enter> ()<Left><CR><ESC><S-o>

" クオーテーションの補完
inoremap ' ''<LEFT>
inoremap " ""<LEFT>

" insertモードでemacsのキーバインドを使えるようにする
imap <C-p> <Up>
imap <C-n> <Down>
imap <C-b> <Left>
imap <C-f> <Right>

" visulaモードでインデント調整後に選択範囲を開放しない
vnoremap > >gv
vnoremap < <gv

" 画面分割系
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap ss :<C-u>sp<CR><C-w>j
nnoremap sv :<C-u>vs<CR><C-w>l


"--------------------------------------------------------------
" plugin setting (dein)
"--------------------------------------------------------------
if &compatible
  set nocompatible
endif

" プラグインがインストールされるディレクトリ
let s:dein_dir = expand('~/.vim/bundles')

" dein.vim本体
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" dein.vim がなければ github から落としてくる
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

" プラグインのロード
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " tomlセット
  let s:toml_dir   = expand('~/dotfiles/.vim/.dein/')
  let s:toml       = s:toml_dir . 'dein.toml'
  let s:toml_lazy  = s:toml_dir . 'dein-lazy.toml'

  " TOML を読み込み、キャッシュしておく
  call dein#load_toml(s:toml     , {'lazy': 0})
  call dein#load_toml(s:toml_lazy, {'lazy': 1})

  " 設定終了
  call dein#end()
  call dein#save_state()
endif

" インストールしていないプラグインがあればインストールを実行
if dein#check_install()
  call dein#install()
endif


