"  検索結果をハイライト
set hlsearch

" インクリメンタルサーチ. １文字入力毎に検索を行う
set incsearch

" 検索文字列が小文字の場合は大文字小文字を区別しない
set ignorecase

" 検索パターンに大文字を含んでいたら大文字小文字を区別する
set smartcase

" 検索がファイル末尾まで進んだら、ファイル先頭から再び検索
set wrapscan

" ESCキー2度押しでハイライトの切り替え
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>