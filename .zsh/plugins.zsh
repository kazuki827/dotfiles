### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk


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
bindkey '^g' autosuggest-accept
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ffff00"


## ----------------------------------------
##  fast-syntax-highlighting
## ----------------------------------------
zinit ice wait lucid
zinit light zdharma-continuum/fast-syntax-highlighting



## ----------------------------------------
##  history-search-multi-word
## ----------------------------------------
# Ctrl+r でコマンド履歴を検索
zinit ice wait lucid
zinit light zdharma-continuum/history-search-multi-word



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