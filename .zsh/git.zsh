# developブランチのHEADをPullしてきて、新しく作業ブランチを切り替える
# git pull origin develop and checkout (覚えやすいの他にないかな...)
gplodaco() {
    git checkout develop;
    git pull origin develop;
    read -p "Input feature branch name: " BRANCH
    git checkout -b ${BRANCH}
}

# git add, commit, pushまで一度に行う
# gacp() {
#     # 全てステージにのせる
#     git add -A;
#     # コミット対象のファイルを確認
#     git status;
#     read -p "Commit with this content. OK? (y/N): " yesno
#     case "$yesno" in
#     # yes
#     [yY]*) read -p "Input Commit Message: " msg;
#         git commit -m "$msg";
#         CULLENT_BRANCH=`git rev-parse --abbrev-ref HEAD`;
#         git push origin ${CULLENT_BRANCH};;
#     # no
#     *) echo "Quit." ;;
#     esac
# }

# 確認いらないadd commit push
function acp() {
    git add .
    git commit -a -m "update"
    git push
}
