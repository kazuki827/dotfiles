## ----------------------------------------
##  Prompt
##  - Must be the top of .zshrc.
#   -r -> file が存在し、かつ読み込み可能ならば真
## ----------------------------------------
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


ZSHHOME="${HOME}/dotfiles/.zsh"

if [ -d $ZSHHOME -a -r $ZSHHOME -a -x $ZSHHOME ]; then
    for i in $ZSHHOME/*; do
        [[ ${i##*/} = *.zsh ]] &&
            [ \( -f $i -o -h $i \) -a -r $i ] && . $i
    done
fi

# brew cask
# ~/ApplicationsにAppを配置するので、Launchpadなどで出てこなくなる。
# ~/.zshrcに下の行をを書き込めば、brewcaskのSymlinkは全て/Applicationsに作られる。AppStoreとかと同じ挙動。
export HOMEBREW_CASK_OPTS="--appdir=/Applications"