# tmux
alias tm='tmux'                    # 新規でセッション開始
alias tmn='tmux new -s'            # 名前をつけて新規でセッション開始
alias tml='tmux ls'                # セッション一覧
alias tma='tmux a'                 # 前回のセッションの続きから再開
alias tmas='tmux a -t'             # 指定したセッションで再開
alias tmks='tmux kill-session -t'  # 指定したセッションを終了する
alias tmka='tmux kill-server'      # すべてのセッションが終了。これを実行しない限り、ターミナルを落としてもセッションが生き続ける。

#  ranger
alias r='ranger'
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

# tig
alias t='tig'

# ghq
alias ghg='ghq get'

# git-open
alias go='git open'

#  exa
# https://github.com/ogham/exa
alias l='exa -l -aa -h -@ -m --icons --git --time-style=long-iso --color=automatic --group-directories-first'

# supercrabtree/k
alias k='k -a'
alias kd='k -d'   # Only directories
alias knd='k -n'  # Do not list directories

#  cd-gitroot
alias cdgr='cd-gitroot'
