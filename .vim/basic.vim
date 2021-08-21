"--------------------------------------------------------------
" shell
"--------------------------------------------------------------
set shell=/usr/local/bin/zsh


"--------------------------------------------------------------
" basic
"--------------------------------------------------------------
" 行番号を表示
set number

" VimをなるべくVi互換にするか、便利な機能を使えるようにするかを決定
set nocompatible

set nobomb
set t_Co=256

" スワップファイル使わない
set noswapfile

" ヤンクをクリップボードへ繋ぐ
set clipboard=unnamed

" ビープ音を消す
set belloff=all

" タイトル系
set title

" 挿入モードからノーマルモードへの切り替えの遅延をなくす
set ttimeoutlen=50


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
" tab / indent
"--------------------------------------------------------------
" 挿入モードで を挿入するとき、代わりに適切な数の空白を使う
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
"  検索結果をハイライト
set hlsearch

" インクリメンタルサーチ. １文字入力毎に検索を行う
set incsearch

" 検索パターンに大文字小文字を区別しない
set ignorecase

" 検索パターンに大文字を含んでいたら大文字小文字を区別する
set smartcase

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
