# master, develop,現在いるブランチ以外のmerged branch削除
# function gbdm()
# {
#   git branch -d $(git branch --merged | grep -v master | grep -v develop | grep -v '*')  
# }

# mkdir + cd
mkcd() {
    mkdir -p "$1"
    [ $? -eq 0 ] && cd "$1"
}

# venvで仮想環境を作り有効化
# function venv() {
    # python3 -m venv "$1" && source "$1"/bin/activate
    # wh python3
# }