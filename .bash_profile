export PATH=/usr/local/Cellar/php70/7.0.9/bin/:$PATH

test -f ~/.git-completion.bash && . $_

export ANDROID_HOME=~/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools

init_git() {
    if [[ "$#" -lt 1 ]]
    then
        echo "Bad parameters"
    elif [[ -d $1 ]]
    then
        echo "A directory already exists by that name"
    else
        mkdir $1 && cd $1 && git init
    fi
}

export -f init_git
eval $(/usr/libexec/path_helper -s)
