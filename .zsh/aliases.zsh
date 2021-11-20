## ----------------------------------------
##  Basic
## ----------------------------------------
alias shell='echo $SHELL'
alias path='echo $PATH'
alias c='clear'
alias ....='cd ../../'
alias ......='cd ../../../'
alias wh='which'
alias to='touch'
alias so='source'
alias soz='source ~/.zshrc'
alias relog='exec $SHELL -l'  # shell 再起動

# editor
alias vs='code .'
alias ch='charm .'
alias ps='pstorm .'
alias v='vim .'
alias vi='vim .'

# dotfiles
alias dot='cd ~/dotfiles'
alias dotvs='cd ~/dotfiles && vs'


## ----------------------------------------
##  Homebrew
## ----------------------------------------
# 参照
# https://qiita.com/omega999/items/6f65217b81ad3fffe7e6
# https://qiita.com/vintersnow/items/fca0be79cdc28bd2f5e4
# Homebrew では、いわゆるパッケージ名のことを formula と呼ぶ。
# インストールしたパッケージの実体は /usr/local/Cellar にあり、/usr/local/bin/ や /usr/local/lib/ にシンボリックリンクが作られる。
alias bs='brew search'
alias bl='brew list'       # インストールされたformulaの一覧を表示
alias bsl='brew services list'
alias bi='brew install'
alias br='brew remove'
alias bod='brew outdated'  # 更新のあるformulaを見る
alias bud='brew update'    # Homebrew と formulaの更新
alias bug='brew upgrade'   # 更新があるformulaを再ビルド
alias bd='brew doctor'
alias bc='brew cleanup'    # 古いバージョンのformulaを削除


## ----------------------------------------
##  Docker
## ----------------------------------------
# basic
alias d='docker'
alias dsp='docker system prune'           # コンテナ、イメージ、ボリューム、ネットワークといった全てのDockerリソースを一括で削除

# container
alias dcl='docker container list'         # 起動中のコンテナ一覧 (= docker ps)
alias dcla='docker container list -a'     # 停止中のコンテナも含めすべての一覧を見る
alias dclo='docker container logs'        # コンテナのログを表示
alias dcr='docker container run'          # イメージからコンテナを起動 (docker pull + docker create + docker start)
alias dcrn='docker container run --name'  # 名前を付けてイメージからコンテナを起動
alias dcrrm='docker container run --rm'   # コンテナをexit後に削除（一回きりのコンテナ）
# alias dr='docker run -itd'              # イメージからコンテナを起動 (docker create + docker start)
alias dce='docker container exec'         # 実行中のコンテナ内でコマンド実行
alias dccre='docker container create'     # イメージからコンテナを作成
alias dcsta='docker container start'      # コンテナ起動
alias dcsto='docker container stop'       # コンテナ停止
alias dcres='docker container restart'    # コンテナ再起動
alias dcrm='docker container rm'          # コンテナ削除
alias dcp='docker container prune'        # 停止中のコンテナを削除

#  image
alias dil='docker image ls'               # イメージ一覧
alias dipl='docker image pull'            # イメージをレジストリから取得
alias dipu='docker image push'            # イメージをレジストリに送信
alias dirm='docker image rm'              # イメージ削除
alias dip='docker image prune'            # 使用していないイメージを削除
alias dib='docker image build'            # Dockerfileからイメージをビルド
alias dit='docker image tag'              # イメージを参照する新しいタグを付ける
alias dii='docker image inspect'          # イメージの詳細情報を表示

# compose
alias dcom='docker-compose'               
alias dcomp='docker-compose ps'               
alias dcomb='docker-compose build'
alias dcombnc='docker-compose build --no-cache'
alias dcomu='docker-compose up'
alias dcomr='docker-compose run'
alias dcome='docker-compose exec'         # 実行中のコンテナ内でコマンド実行
alias dcomd='docker-compose down'


## ----------------------------------------
##  Git
## ----------------------------------------
# basic
alias g='git'

# version
alias gv='git version'

# config
alias gconf='git config'
alias gconfl='git config --list'
alias gconfgl='git config --global --list'
alias gconfge='git config --global --edit'

# init 
alias gi='git init'

# remote
alias gr='git remote -v'

# status
alias gs='git status'
alias gss='git status -s'

# branch
alias gb='git branch'
alias gba='git branch -a'
alias gbm='git branch -m'  # ブランチ名変更
alias gbd='git branch -D'

# checkout
alias gco='git checkout'
alias gcob='git checkout -b'
alias gco.='git checkout .'
alias gcom='git checkout master'
alias gcod='git checkout develop'

# grep
alias gg='git grep'

# add
alias ga='git add'
alias gaa='git add -A'

# commit
alias gc='git commit'
# alias gcm='git commit -m'
# alias gca='git commit --amend'
alias gcane='git commit --amend --no-edit'  # ステージングした変更点を直前のコミットに含める。

# diff
alias gd='git diff'
alias gds='git diff --staged'

#log
alias gl='git log'
alias glo='git log --oneline'
alias glog='git log --oneline --grep='
alias glg='git log --graph --name-status --pretty=format:"%C(red)%h %C(green)%an %C(Cyan)%ad %Creset%s %C(yellow)%d%Creset"'

# reflog
alias gref='git reflog'

# fetch
alias gfu='git fetch upstream'
alias gfo='git fetch origin'
alias gfom='git fetch origin master'
alias gfod='git fetch origin develop'

# pull
alias gpl='git pull'
alias gplo='git pull origin'
alias gplom='git pull origin master'
alias gplod='git pull origin develop'
alias gplr='git pull --rebase'
alias gplro='git pull --rebase origin'
alias gplrom='git pull --rebase origin master'
alias gplrod='git pull --rebase origin develop'

# merge
alias gm='git merge'
alias gma='git merge --abort'
alias gmom='git merge origin/master'
alias gmod='git merge origin/develop'
alias gmud='git merge upstream/develop'

# push
alias gp='git push'
alias gpu='git push -u'
alias gpo='git push origin'
alias gpom='git push origin master'
alias gdrb='git push --delete origin'  # リモートブランチ削除
# git push origin :branch_name でもいい

# stash
alias gst='git stash'
alias gsts='git stash save'      # 退避にコメント
alias gstu='git stash -u'        # untracked fileも含めて変更差分を退避
alias gstl='git stash list'
alias gstld='git stash list -p'  # git stash list + git diff
alias gsta='git stash apply'
alias gstp='git stash pop'
alias gstd='git stash drop'      # stash削除
alias gstc='git stash clear'     # すべてのstash削除

# rebase
alias gre='git rebase'
alias grei='git rebase -i'
alias grea='git rebase --abort'
alias grec='git rebase --continue'

# (p) pick   -> コミットをそのまま残す。
# (r) reword -> コミットメッセージを変更。
# (e) edit   -> コミット自体の内容を編集。
# (s) squash -> 直前のpickを指定したコミットに統合。メッセージも統合。
# (f) fixup  -> 直前のpickを指定したコミットに統合。メッセージは破棄。

# reset
alias grts='git reset --soft HEAD~'      # HEADだけを元に戻す(commit 取り消し)
alias grtm='git reset --mixed HEAD .'    # add 取り消し
alias grth='git reset --hard HEAD~'      # インデックス、ワーキングツリーも含めて元に戻す
alias grtc='git reset --hard ORIG_HEAD'  # 直前のリセットを取り消し(c = cancel)

# revert
alias grev='git revert'

# cherry-pick
alias gcp='git cherry-pick'

# show
alias gsh='git show'

# メモ
# @ は HEAD のエイリアス
# HEAD^^^  =  HEAD~3  =  HEAD~~~  =  HEAD~{3}  =  @^^^

# [ 取り消し系備忘録 ]
# ローカル変更取り消し(新規追加したファイルに関しては削除されない -> git clean -df)
# git checkout . 

# 初めての add 取り消し
# git rm --cached -r . or filename 
# 2回目以降の add 取り消し
# git reset HEAD

# Github CLI
alias gcl='gh auth login'     # ログイン
alias gccr=' gh repo create'  # リモートリポジトリを作成


## ----------------------------------------
##  Database
## ----------------------------------------
# SQLite3
alias sq='sqlite3'

# MongoDB
# インストール方法
# brew tap mongodb/brew
# brew install mongodb-community
alias mstart='brew services start mongodb-community'
alias mstop='brew services stop mongodb-community'
alias m='mongo'  # 起動


## ----------------------------------------
##  Node.js
## ----------------------------------------
#  nodebrew
alias nbl='nodebrew list'
alias nbu='nodebrew use'
alias nbi='nodebrew install'
alias nbui='nodebrew uninstall'

# npm
alias n='npm'
alias ni='npm install'
alias nid='npm install --save-dev'
alias nui='npm uninstall'
alias ns='npm run start'
alias nd='npm run dev'
alias nb='npm run build'
alias nl='npm run lint'

#  yarn
alias y='yarn'
alias ya='yarn add'
alias yad='yarn add --dev'
alias yr='yarn remove'
alias ys='yarn start'
alias yd='yarn dev'
alias yb='yarn build'
alias yl='yarn lint'


## ----------------------------------------
##  Python
## ----------------------------------------
# basic
alias p='python'
alias p3='python3'
alias pi='pip install'
alias pui='pip uninstall'
alias pl='pip list'
alias pibf='pip install black flake8'
alias pfr='pip freeze > requirements.txt'
alias pir='pip install -r requirements.txt'

# venv
alias venv='python3 -m venv venv'       # 仮想環境を作成
alias venva='source venv/bin/activate'  # 仮想環境を有効化
alias venvd='deactivate'                # 仮想環境から抜ける

#  Anaconda
alias cel='conda env list'
alias cpl='conda list'             # インストールされているパッケージの確認
alias cec='conda create -n'        # 仮想環境の作成(-n: --name)
alias cer='conda remove --all -n'  # 仮想環境の削除
alias cea='conda activate'         # 仮想環境へ移動
alias ced='conda deactivate'       # 仮想環境からbase環境へ移動
alias cps='conda search'           # パッケージの確認
alias cpi='conda install'          # パッケージのインストール
alias cpui='conda uninstall'       # パッケージのアンインストール
alias cca='conda clean --all'      # 使われていないパッケージやキャッシュを削除

# Django
alias pm='python manage.py'
alias pmrs='python manage.py runserver'
alias pmmm='python manage.py makemigrations'  # --name オプションで名前を付けれる
alias pmmi='python manage.py migrate'
alias pmsm='python manage.py showmigrations'  # 過去に実行されたマイグレーションのリストを表示
alias pmsql='python manage.py sqlmigrate'     # SQL確認 (ex python manage.py sqlmigrate polls 0001)
# マイグレーションを特定の位置まで戻す
# python manage.py migrate [app name] [マイグレーションの名前]
# マイグレーションを実施していない状態に戻す
# python manage.py migrate [app name] zero

# Flask
# FastAPI
# uvicorn fastapi_app:app --port ~
# gunicorn flask_app:app --port ~


## ----------------------------------------
##  PHP
## ----------------------------------------
# Composer
alias com='composer'

# Laravel
alias pa='php artisan'
alias pammo='php artisan make:model'      # モデル名はテーブル名の単数形にする
alias pamc='php artisan make:controller'  # モデル名はテーブル名の単数形にする
alias pamm='php artisan make:migration'
alias pami='php artisan migrate'


## ----------------------------------------
##  Lib
## ----------------------------------------
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
