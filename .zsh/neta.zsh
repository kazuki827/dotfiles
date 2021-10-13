# function command_not_found_handler()
# {
#   if [ -e /usr/local/bin/imgcat ];then
#     if [ -e ~/dotfiles/.zsh/img/command_not_found.jpg ];then
#       imgcat ~/dotfiles/.zsh/img/command_not_found.jpg
#     fi
#   fi
#   echo "$1？ 何言ってんの？"
# }

# function tukareta()
# {
#   if [ -e /usr/local/bin/imgcat ];then
#     if [ -e ~/dotfiles/.zsh/img/tukareta.gif ];then
#       imgcat ~/dotfiles/.zsh/img/tukareta.gif
#     fi
#   fi
#   echo "お疲れ様！"
# }

# tmuxで画像が崩れる
# command_not_found_handler() {
#     # @See: https://qastack.jp/unix/88296/get-vertical-cursor-position
#     get_cursor_position() {
#         old_settings=$(stty -g) || exit
#         stty -icanon -echo min 0 time 3 || exit
#         printf '\033[6n'
#         pos=$(dd count=1 2> /dev/null)
#         pos=${pos%R*}
#         pos=${pos##*\[}
#         x=${pos##*;} y=${pos%%;*}
#         stty "$old_settings"
#     }
#     command imgcat ~/dotfiles/.zsh/img/command_not_found.jpg
#     [ $? -ne 0 ] && return
#     [ ! "$TMUX" ] && return
#     get_cursor_position
#     # 2行分画像が残ってしまうためtputで再描画判定させて消す
#     read && tput cup `expr $y - 2` 0
# }