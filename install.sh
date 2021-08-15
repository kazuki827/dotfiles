# https://qiita.com/pugiemonn/items/e5fb508df690a323ee14
#!/bin/bash
# 配置したい設定ファイル
# dotfiles=(.zshrc .tmux.conf)

# .zshrc と .tmux.conf という設定ファイルのシンボリックリンクを
# ホームディレクトリ直下に作成する
# for file in "${dotfiles[@]}"; do
#         ln -svf $file ~/
# done

# ln -s ~/dotfiles/.zshrc ~/.zshrc

#!/usr/bin/env bash

# 未定義な変数があったら途中で終了する
set -u

# 今のディレクトリ
# dotfilesディレクトリに移動する
BASEDIR=$(dirname $0)
cd $BASEDIR

# dotfilesディレクトリにある、ドットから始まり2文字以上の名前のファイルに対して
for f in .??*; do
    [ "$f" = ".git" ] && continue
    [ "$f" = ".gitconfig.local.template" ] && continue
    [ "$f" = ".gitmodules" ] && continue

    # シンボリックリンクを貼る
    ln -snfv ${PWD}/"$f" ~/
done

