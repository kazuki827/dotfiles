### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi


source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zinit's installer chunk


zinit ice depth=1; zinit light romkatv/powerlevel10k


#############################################################################################
################################### syntax highlight ########################################
#############################################################################################
# コマンドに対してシンタックスハイライトをしてくれる
zinit ice wait lucid
zinit light zdharma/fast-syntax-highlighting


#############################################################################################
##################################### auto suggest ##########################################
#############################################################################################
# 入力中のコマンドと一致するコマンドを履歴から探してサジェストしてくれる
zinit light zsh-users/zsh-autosuggestions
# サジェストを受け入れるためのキーバインドを設定
bindkey '^j' autosuggest-accept


#############################################################################################
####################################### git open ############################################
#############################################################################################
# git open で現在のgitレポジトリをブラウザで開いてくれるプラグイン
zinit ice wait lucid
zinit light paulirish/git-open


#############################################################################################
####################################### bat #################################################
#############################################################################################
# bat (見やすいcat)
zinit ice as"program" from"gh-r" mv"bat* -> bat" pick"bat/bat"
zinit light sharkdp/bat
# ice: 次の行に対してオプションを付与する
# as"program": zshのソースファイルではなく,コマンドとして扱う
# from"gh-r": githubのリリースからダウンロードする
# mv: ダウンロードしたものをリネームする
# pick: pathを通すものの指定
# エイリアス設定
if builtin command -v bat > /dev/null; then
  alias cat="bat"
fi