## ----------------------------------------
##  Zinit's installer
## ----------------------------------------
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


## ----------------------------------------
##  powerlevel10k
## ----------------------------------------
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
zinit ice depth=1
zinit light romkatv/powerlevel10k


## ----------------------------------------
##  zsh-autosuggestions
## ----------------------------------------
zinit ice wait lucid
zinit light zsh-users/zsh-autosuggestions
bindkey '^j' autosuggest-accept
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ffff00"


## ----------------------------------------
##  fast-syntax-highlighting
## ----------------------------------------
zinit ice wait lucid
zinit light zdharma/fast-syntax-highlighting


## ----------------------------------------
##  history-search-multi-word
## ----------------------------------------
# Ctrl+r でコマンド履歴を検索
zinit ice wait lucid
zinit light zdharma/history-search-multi-word


## ----------------------------------------
##  k
## ----------------------------------------
zinit ice wait lucid
zinit light supercrabtree/k


## ----------------------------------------
##  git-open
## ----------------------------------------
zinit ice wait lucid
zinit light paulirish/git-open

## ----------------------------------------
##  cd-gitroot
## ----------------------------------------
zinit ice wait lucid
zinit light mollifier/cd-gitroot

## ----------------------------------------
##  bat
## ----------------------------------------
zinit ice as"program" from"gh-r" mv"bat* -> bat" pick"bat/bat"
zinit light sharkdp/bat
if builtin command -v bat > /dev/null; then
  alias cat="bat"
fi