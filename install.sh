#!/bin/sh
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.zshenv ~/.zshenv
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.tigrc ~/.tigrc
ln -sf ~/dotfiles/.dein ~/.dein

# 未定義な変数があったら途中で終了する
# set -u

# # 今のディレクトリ
# # dotfilesディレクトリに移動する
# BASEDIR=$(dirname $0)
# cd $BASEDIR

# echo "Create dotfile links..."
# for f in .??*
# do
#     [ "$f" = ".git" ] && continue
#     [ "$f" = ".gitconfig.local.template" ] && continue
#     [ "$f" = ".gitmodules" ] && continue
#     ln -snfv ${PWD}/"$f" ~/
# done

# cat << END

# **************************************************
# DOTFILES SETUP FINISHED! bye.
# **************************************************

# END

