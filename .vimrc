runtime! ~/dotfiles/.vim/*.vim




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
" ローカルになければclone
if has('vim_starting')
  set rtp+=~/.vim/plugged/vim-plug
  if !isdirectory(expand('~/.vim/plugged/vim-plug'))
    echo 'install vim-plug...'
    call system('mkdir -p ~/.vim/plugged/vim-plug')
    call system('git clone https://github.com/junegunn/vim-plug.git ~/.vim/plugged/vim-plug/autoload')
  end
endif

call plug#begin('~/.vim/plugged')

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
" colorscheme codedark
" Plug 'tomasiser/vim-code-dark'
" let g:airline_theme = 'codedark'

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