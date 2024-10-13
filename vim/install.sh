FILE_PATH=$(readlink -f "$0")
echo "当前脚本路径$FILE_PATH"
DIR=$(dirname $FILE_PATH)
echo "当前文件目录$DIR"
if command -v vim > /dev/null 2>&1;then	
	echo "vim is already installed"
	exit 1
else
	sudo apt install vim
	cp $DIR/.vimrc ~/.vimrc
fi
echo "vim installed successfully"
