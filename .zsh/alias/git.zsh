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
alias grts='git reset --soft HEAD~'      # HEADだけを元に戻す
alias grtm='git reset --mixed HEAD~'     # HEADとインデックスを元に戻す(git add 取り消し)
alias grth='git reset --hard HEAD~'      # インデックス、ワーキングツリーも含めて元に戻す
alias grtc='git reset --hard ORIG_HEAD'  # 直前のリセットを取り消し(c = cancel)

# git revert <コミット>
alias grev='git revert'

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


## ----------------------------------------
##  Github CLI
## ----------------------------------------
alias gcl='gh auth login'     # ログイン
alias gccr=' gh repo create'  # リモートリポジトリを作成
