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

dmy() {
    read "rm?--rm option y or n (y):"
    read "name?Container name (mysql):"
    read "port?Port (3306):"
    read "root_pass?MYSQL_ROOT_PASSWORD (root):"
    read "database?MYSQL_DATABASE (test_db):"
    read "tag?Tag (latest):"

    if [ "$rm" = "" ]; then
        rm="y"
    fi

    if [ "$name" = "" ]; then
        name="mysql"
    fi

    if [ "$port" = "" ]; then
        port="3306"
    fi

    if [ "$root_pass" = "" ]; then
        root_pass="root"
    fi

    if [ "$database" = "" ]; then
        database="test_db"
    fi

    if [ "$tag" = "" ]; then
        tag="latest"
    fi

    if [ "$rm" = "y" ];then
        echo docker run --rm --name "$name" -e MYSQL_ROOT_PASSWORD="$root_pass" -e MYSQL_DATABASE="$database" -p 127.0.0.1:"$port":3306 -d mysql:"$tag"
        docker run --rm --name "$name" -e MYSQL_ROOT_PASSWORD="$root_pass" -e MYSQL_DATABASE="$database" -p 127.0.0.1:"$port":3306 -d mysql:"$tag"
    else
        echo docker run --name "$name" -e MYSQL_ROOT_PASSWORD="$root_pass" -e MYSQL_DATABASE="$database" -p 127.0.0.1:"$port":3306 -d mysql:"$tag"
        docker run --name "$name" -e MYSQL_ROOT_PASSWORD="$root_pass" -e MYSQL_DATABASE="$database" -p 127.0.0.1:"$port":3306 -d mysql:"$tag"
    fi
}

# dpo() {
#     read "root_pass?MYSQL_ROOT_PASSWORD:"
#     read "database?MYSQL_DATABASE:"
#     docker run --name postgres -e POSTGRES_PASSWORD=mysecretpassword -d postgres:latest
# }

# port() {
#     sudo lsof -P -i:"$1"
# }

# kill() {
#     sudo kill -9 "$1"
# }
