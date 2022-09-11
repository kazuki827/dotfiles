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
[[ -s "/Users/kazukimatsuda/.gvm/scripts/gvm" ]] && source "/Users/kazukimatsuda/.gvm/scripts/gvm"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/kazukimatsuda/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/kazukimatsuda/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/kazukimatsuda/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/kazukimatsuda/google-cloud-sdk/completion.zsh.inc'; fi
