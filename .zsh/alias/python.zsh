# basic
alias p='python'
alias p3='python3'
alias pi='pip install'
alias pui='pip uninstall'
alias pl='pip list'
alias pibf='pip install black flake8'
alias pfr='pip freeze > requirements.txt'
alias pir='pip install -r requirements.txt'

# venv
alias venv='python3 -m venv venv'       # 仮想環境を作成
alias venva='source venv/bin/activate'  # 仮想環境を有効化
alias venvd='deactivate'                # 仮想環境から抜ける

#  Anaconda
alias cel='conda env list'
alias cpl='conda list'             # インストールされているパッケージの確認
alias cec='conda create -n'        # 仮想環境の作成(-n: --name)
alias cer='conda remove --all -n'  # 仮想環境の削除
alias cea='conda activate'         # 仮想環境へ移動
alias ced='conda deactivate'       # 仮想環境からbase環境へ移動
alias cps='conda search'           # パッケージの確認
alias cpi='conda install'          # パッケージのインストール
alias cpui='conda uninstall'       # パッケージのアンインストール
alias cca='conda clean --all'      # 使われていないパッケージやキャッシュを削除

# Django
alias pm='python manage.py'
alias pmrs='python manage.py runserver'
alias pmmm='python manage.py makemigrations'  # --name オプションで名前を付けれる
alias pmmi='python manage.py migrate'
alias pmsm='python manage.py showmigrations'  # 過去に実行されたマイグレーションのリストを表示
alias pmsql='python manage.py sqlmigrate'     # SQL確認 (ex python manage.py sqlmigrate polls 0001)
# マイグレーションを特定の位置まで戻す
# python manage.py migrate [app name] [マイグレーションの名前]
# マイグレーションを実施していない状態に戻す
# python manage.py migrate [app name] zero

# Flask
# FastAPI
# uvicorn fastapi_app:app --port ~
# gunicorn flask_app:app --port ~