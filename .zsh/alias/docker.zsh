# basic
alias d='docker'
alias dsp='docker system prune'        # コンテナ、イメージ、ボリューム、ネットワークといった全てのDockerリソースを一括で削除

# container
alias dcl='docker container list'      # 起動中のコンテナ一覧 (= docker ps)
alias dcla='docker container list -a'  # 停止中のコンテナも含めすべての一覧を見る
alias dr='docker run'                  # イメージからコンテナを起動 (docker pull + docker create + docker start)
alias drn='docker run --name'          # 名前を付けてイメージからコンテナを起動
# alias dr='docker run -itd'           # イメージからコンテナを起動 (docker create + docker start)
alias dex='docker exec'                # 実行中のコンテナ内でコマンド実行
alias dcre='docker create'             # イメージからコンテナを作成
alias dsta='docker start'              # コンテナ起動
alias dsto='docker stop'               # コンテナ停止
alias dres='docker restart'            # コンテナ再起動
alias drc='docker rm'                  # コンテナ削除
alias dcp='docker container prune'     # 停止中のコンテナを削除

#  image
alias dil='docker image ls'            # イメージ一覧
alias dipl='docker image pull'         # イメージをレジストリから取得
alias dipu='docker image push'         # イメージをレジストリに送信
alias dir='docker image rm'            # イメージ削除
alias dip='docker image prune'         # 使用していないイメージを削除
alias dib='docker image build'         # Dockerfileからイメージをビルド
alias dit='docker image tag'           # イメージを参照する新しいタグを付ける

# compose
alias dc='docker-compose'
