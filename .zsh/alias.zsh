## ----------------------------------------
##  Basic
## ----------------------------------------
alias shell='echo $SHELL'
alias path='echo $PATH'
alias c='clear'
alias ....='cd ../../'
alias ......='cd ../../../'
alias wh='which'
alias so='source'
alias soz='source ~/.zshrc'
# shell 再起動
alias relog='exec $SHELL -l'


## ----------------------------------------
##  git
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
alias gbm='git branch -m'
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
alias gcm='git commit -m'
alias gca='git commit --amend'

# diff
alias gd='git diff'
alias gds='git diff --staged'

#log
alias gl='git log'
alias glo='git log --oneline'
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
alias gpo='git push origin'
alias gpom='git push origin master'

# stash
alias gst='git stash'
# 退避にコメント
alias gsts='git stash save'
# untracked fileも含めて変更差分を退避
alias gstu='git stash -u'
alias gstl='git stash list'
alias gsta='git stash apply'
alias gstp='git stash pop'
# stash削除
alias gstd='git stash drop'
# すべてのstash削除
alias gstc='git stash clear'

# rebase
alias gre='git rebase'
alias grei='git rebase -i'
alias grea='git rebase --abort'
alias grec='git rebase --continue'

# reset
# git add 取り消し
alias grta='git reset --mixed HEAD'
# commit 取り消し
# HEADだけを元に戻す
alias grts='git reset --soft HEAD~'
# HEADとインデックスを元に戻す
alias grtm='git reset --mixed HEAD~'
# インデックス、ワーキングツリーも含めて元に戻す
alias grth='git reset --hard HEAD~'
# 直前のリセットを取り消し(c = cancel)
alias grtc='git reset --hard ORIG_HEAD'

# git revert <コミット>
alias grev='git revert'

# show
alias gsh='git show'

# メモ
# @ は HEAD のエイリアス
# HEAD^^^  =  HEAD~3  =  HEAD~~~  =  HEAD~{3}  =  @^^^


## ----------------------------------------
##  npm
## ----------------------------------------
alias n='npm'
alias ni='npm install'
alias nid='npm install --save-dev'
alias nui='npm uninstall'
alias ns='npm run start'
alias nd='npm run dev'


## ----------------------------------------
##  yarn
## ----------------------------------------
alias y='yarn'
alias ya='yarn add'
alias yad='yarn add --dev'
alias yr='yarn remove'
alias ys='yarn start'
alias yd='yarn dev'


## ----------------------------------------
##  tmux
## ----------------------------------------
alias tm='tmux'
alias tml='tmux ls'
alias tmn='tmux new -s'
alias tma='tmux a -t'
alias tmka='tmux kill-server'
alias tmks='tmux kill-session -t'


## ----------------------------------------
##  ranger
## ----------------------------------------
alias r='ranger'
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'


## ----------------------------------------
##  tig
## ----------------------------------------
alias t='tig'


## ----------------------------------------
##  ghq
## ----------------------------------------
alias ghg='ghq get'


## ----------------------------------------
##  git-open
## ----------------------------------------
alias go='git open'


## ----------------------------------------
##  vim
## ----------------------------------------
alias v='vim'
alias vi='vim'


## ----------------------------------------
##  docker
## ----------------------------------------
alias d='docker'
alias dp='docker ps'
alias dpa='docker ps -a'
alias dc='docker-compose'


## ----------------------------------------
##  exa
## ----------------------------------------
alias l='exa -l -aa -h -@ -m --icons --git --time-style=long-iso --color=automatic --group-directories-first'


## ----------------------------------------
##  supercrabtree/k
## ----------------------------------------
alias k='k -a'
# list only directories
alias kd='k -d'
# do not list directories
alias knd='k -n'


## ----------------------------------------
##  cd-gitroot
## ----------------------------------------
alias cdgr='cd-gitroot'
