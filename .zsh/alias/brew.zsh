# 参照
# https://qiita.com/omega999/items/6f65217b81ad3fffe7e6
# https://qiita.com/vintersnow/items/fca0be79cdc28bd2f5e4
# Homebrew では、いわゆるパッケージ名のことを formula と呼ぶ。
# インストールしたパッケージの実体は /usr/local/Cellar にあり、/usr/local/bin/ や /usr/local/lib/ にシンボリックリンクが作られる。
alias bs='brew search'
alias bl='brew list'       # インストールされたformulaの一覧を表示
alias bsl='brew services list'
alias bi='brew install'
alias br='brew remove'
alias bod='brew outdated'  # 更新のあるformulaを見る
alias bud='brew update'    # Homebrew と formulaの更新
alias bug='brew upgrade'   # 更新があるformulaを再ビルド
alias bd='brew doctor'
alias bc='brew cleanup'    # 古いバージョンのformulaを削除