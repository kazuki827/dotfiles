function command_not_found_handler()
{
  if [ -e /usr/local/bin/imgcat ];then
    if [ -e ~/dotfiles/.zsh/img/command_not_found.jpg ];then
      imgcat ~/dotfiles/.zsh/img/command_not_found.jpg
    fi
  fi
  echo "$1？ 何言ってんの？"
}

function tukareta()
{
  if [ -e /usr/local/bin/imgcat ];then
    if [ -e ~/dotfiles/.zsh/img/tukareta.gif ];then
      imgcat ~/dotfiles/.zsh/img/tukareta.gif
    fi
  fi
  echo "お疲れ様！"
}