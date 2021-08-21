"--------------------------------------------------------------
" shell
"--------------------------------------------------------------
set shell=/usr/local/bin/zsh


"--------------------------------------------------------------
" base
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
" plugin setting (vim-plug)
"--------------------------------------------------------------
if has('vim_starting')
  set rtp+=~/.vim/plugged/vim-plug
  if !isdirectory(expand('~/.vim/plugged/vim-plug'))
    echo 'install vim-plug...'
    call system('mkdir -p ~/.vim/plugged/vim-plug')
    call system('git clone https://github.com/junegunn/vim-plug.git ~/.vim/plugged/vim-plug/autoload')
  end
endif

call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-plug',
      \ {'dir': '~/.vim/plugged/vim-plug/autoload'}

"--------------------------------------------------------------
" coc.nvim
"--------------------------------------------------------------
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"--------------------------------------------------------------
" airline
"--------------------------------------------------------------
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" タブを有効化
let g:airline#extensions#tabline#enabled = 1
"" vim-airline

" タブ切り替え
nmap <C-p> <Plug>AirlineSelectPrevTab
nmap <C-n> <Plug>AirlineSelectNextTab

" ステータスラインに表示する項目を変更
let g:airline#extensions#default#layout = [
  \ [ 'a', 'b', 'c' ],
  \ ['z']
  \ ]
let g:airline_section_c = '%t %M'
let g:airline_section_z = get(g:, 'airline_linecolumn_prefix', '').'%3l:%-2v'

" 変更がなければdiffの行数を表示しない
let g:airline#extensions#hunks#non_zero_only = 1 

" タブラインの表示を変更
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline#extensions#tabline#show_close_button = 0

"--------------------------------------------------------------
" color scheme
"--------------------------------------------------------------
colorscheme codedark
Plug 'tomasiser/vim-code-dark'
let g:airline_theme = 'codedark'

"--------------------------------------------------------------
" show file tree
"--------------------------------------------------------------
Plug 'lambdalisue/fern.vim'
" Ctrl+nでファイルツリーを表示/非表示する
nnoremap <C-n> :Fern . -reveal=% -drawer -toggle -width=40<CR>

"--------------------------------------------------------------
" show git diffs in file tree
"--------------------------------------------------------------
Plug 'lambdalisue/fern-git-status.vim'

"--------------------------------------------------------------
" icon in file tree
"--------------------------------------------------------------
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
let g:fern#renderer = 'nerdfont'

"--------------------------------------------------------------
" add color to icon in file tree
"--------------------------------------------------------------
Plug 'lambdalisue/glyph-palette.vim'
" アイコンに色をつける
augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END

"--------------------------------------------------------------
" show git diff
"--------------------------------------------------------------
Plug 'airblade/vim-gitgutter'
"" git操作
" g]で前の変更箇所へ移動する
nnoremap g[ :GitGutterPrevHunk<CR>
" g[で次の変更箇所へ移動する
nnoremap g] :GitGutterNextHunk<CR>
" ghでdiffをハイライトする
nnoremap gh :GitGutterLineHighlightsToggle<CR>
" gpでカーソル行のdiffを表示する
nnoremap gp :GitGutterPreviewHunk<CR>
" 記号の色を変更する
highlight GitGutterAdd ctermfg=green
highlight GitGutterChange ctermfg=blue
highlight GitGutterDelete ctermfg=red

"" 反映時間を短くする(デフォルトは4000ms)
set updatetime=250

"--------------------------------------------------------------
" JavaScript
"--------------------------------------------------------------
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/yajs.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/es.next.syntax.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/javascript-libraries-syntax.vim', { 'for': ['javascript', 'javascript.jsx'] }

function! EnableJavascript()
  " Setup used libraries
  let g:used_javascript_libs = 'jquery,underscore,react,flux,jasmine,d3'
  let b:javascript_lib_use_jquery = 1
  let b:javascript_lib_use_underscore = 1
  let b:javascript_lib_use_react = 1
  let b:javascript_lib_use_flux = 1
  let b:javascript_lib_use_jasmine = 1
  let b:javascript_lib_use_d3 = 1
endfunction
autocmd MyVimrc FileType javascript,javascript.jsx call EnableJavascript()

Plug 'maxmellon/vim-jsx-pretty', { 'for': ['javascript', 'javascript.jsx'] }

Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'], 'do': 'npm install' }

call plug#end()