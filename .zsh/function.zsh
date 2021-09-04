# master, develop,現在いるブランチ以外のmerged branch削除
# function gbdm()
# {
#   git branch -d $(git branch --merged | grep -v master | grep -v develop | grep -v '*')  
# }