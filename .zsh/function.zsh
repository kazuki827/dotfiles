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

# port() {
#     sudo lsof -P -i:"$1"
# }

# kill() {
#     sudo kill -9 "$1"
# }
