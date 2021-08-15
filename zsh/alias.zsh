#################################################
#################### basic ######################
#################################################
alias shell='echo $SHELL'
alias path='echo $PATH'
alias ....='cd ../../'
alias ......='cd ../../../'
alias wh='which'
alias so='source'

#################################################
###################### git ######################
#################################################
# basic
alias g='git'
# version
alias gv='git version'
# config
alias gconf='git config --list'
alias gconfe='git config --global --edit'
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
alias gco.='git checkout .' # ワークツリーにある全ファイルの変更を取り消す
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
alias gdc='git diff --cached'
#log
alias gl='git log'
alias glo='git log --oneline'
alias glg='git log --graph --name-status --pretty=format:"%C(red)%h %C(green)%an %C(Cyan)%ad %Creset%s %C(yellow)%d%Creset"'
# reflog
alias gref='git reflog'
# fetch
alias gfu='git fetch upstream'7
alias gfo='git fetch origin'
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
alias gsl='git stash list'
alias gsu='git stash -u'
alias gsa='git stash apply'
alias gsp='git stash pop'
# reset
alias grh='git reset HEAD' #ステージングにある全ファイルをワークツリーに戻す（ git add -A を取り消す）
# show
alias gsh='git show'

#################################################
###################### vim ######################
#################################################
alias v='vim'
alias vi='vim'

#################################################
##################### docker ####################
#################################################
alias d='docker'
alias dc='docker-compose'

alias mss='mysql.server start'
