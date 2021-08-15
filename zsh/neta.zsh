# コマンドを間違えるたびに美少女に罵られたい！
# https://qiita.com/onokatio/items/4930e4b23339edd05d47

# [ zshでtypoした時に好きな画像を出したい！ ]
# https://qiita.com/itigoppo/items/a4e68f72ff2ec2a1c883
function command_not_found_handler()
  {
    if [ -e /usr/local/bin/imgcat ];then
      if [ -e ~/command_not_found.jpg ];then
        imgcat ~/command_not_found.jpg
      fi
    fi
    echo "$1？ 何言ってんの？"
  }