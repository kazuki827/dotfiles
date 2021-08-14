#################################  HISTORY  #################################
HISTFILE=$HOME/.zsh-history # 履歴を保存するファイル
HISTSIZE=100000             # メモリ上に保存する履歴のサイズ
SAVEHIST=1000000            # 上述のファイルに保存する履歴のサイズ
setopt inc_append_history   # 実行時に履歴をファイルにに追加
setopt share_history        # 履歴を他のシェルとリアルタイム共有
setopt hist_ignore_dups     # 直前の重複を記録しない
setopt hist_ignore_all_dups # 入力したコマンドがすでにコマンド履歴に含まれる場合、古い方のコマンドを削除
setopt hist_reduce_blanks   # historyに保存するときに余分なスペースを削除
setopt hist_ignore_space    # スペースから始まるコマンド行はヒストリに残さない


#################################  COMPLEMENT  #################################
# enable completion
autoload -Uz compinit && compinit

# 補完候補をそのまま探す -> 小文字を大文字に変えて探す -> 大文字を小文字に変えて探す
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' '+m:{[:upper:]}={[:lower:]}'

### 補完方法毎にグループ化する。
zstyle ':completion:*' format '%B%F{blue}%d%f%b'
zstyle ':completion:*' group-name ''

### 補完侯補をメニューから選択する。
### select=2: 補完候補を一覧から選択する。補完候補が2つ以上なければすぐに補完する。
zstyle ':completion:*:default' menu select=2


#################################  OTHERS  #################################
export LANG=ja_JP.UTF-8 # 文字コード指定
setopt auto_cd          # cdなしでディレクトリ移動
setopt auto_pushd       # cd -で以前移動したディレクトリを表示
setopt no_beep          # ビープ音の停止
setopt nolistbeep       # ビープ音の停止(補完時)
setopt no_flow_control  # disable ctrl+s, ctrl+q
setopt print_eight_bit  # 日本語ファイルを扱えるようにする
setopt correct          # コマンドミスを修正
setopt auto_param_keys  # カッコの対応などを自動的に補完する

