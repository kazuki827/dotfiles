#$PATH の重複をなくす
typeset -U path cdpath fpath manpath


## ----------------------------------------
##  Editor
## ----------------------------------------
export EDITOR=vim
export CVSEDITOR="${EDITOR}"
export GIT_EDITOR="${EDITOR}"
export SVN_EDITOR="${EDITOR}"


## ----------------------------------------
##  History
## ----------------------------------------
HISTFILE=$HOME/.zsh-history # 履歴を保存するファイル
HISTSIZE=10000              # メモリ上に保存する履歴のサイズ
SAVEHIST=1000000            # 上述のファイルに保存する履歴のサイズ
setopt inc_append_history   # 実行時に履歴をファイルに追加
setopt share_history        # 履歴を他のシェルとリアルタイム共有
setopt hist_ignore_dups     # 直前の重複を記録しない
setopt extended_history     # 開始と終了を記録
setopt hist_ignore_all_dups # 入力したコマンドがすでにコマンド履歴に含まれる場合、古い方のコマンドを削除
setopt hist_reduce_blanks   # historyに保存するときに余分なスペースを削除
setopt hist_expand          # 補完時にヒストリを自動的に展開


## ----------------------------------------
##  Complement
## ----------------------------------------
autoload -Uz compinit && compinit
# 補完候補をそのまま探す -> 小文字を大文字に変えて探す -> 大文字を小文字に変えて探す
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' '+m:{[:upper:]}={[:lower:]}'
### 補完方法毎にグループ化する。
zstyle ':completion:*' format '%B%F{blue}%d%f%b'
zstyle ':completion:*' group-name ''
### 補完侯補をメニューから選択する。
### select=2: 補完候補を一覧から選択する。補完候補が2つ以上なければすぐに補完する。
zstyle ':completion:*:default' menu select=2


## ----------------------------------------
##  Option
## ----------------------------------------
setopt auto_cd              # cdなしでディレクトリ移動
setopt auto_pushd           # cd -で以前移動したディレクトリを表示
setopt no_beep              # ビープ音の停止
setopt nolistbeep           # ビープ音の停止(補完時)
setopt no_flow_control      # disable ctrl+s, ctrl+q
setopt print_eight_bit      # 日本語ファイルを表示可能にする
setopt correct              # コマンドミスを修正
setopt auto_param_keys      # カッコ自動補完
setopt auto_param_keys      # 環境変数を補完