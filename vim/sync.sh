FILE_PATH=$(readlink -f "$0")
DIR=$(dirname $FILE_PATH)
cp ~/.vimrc $DIR
