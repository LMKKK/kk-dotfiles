if [ -e /bin/zsh ]; then
	echo "zsh is already installed"
else
	# 安装zsh
	sudo apt install zsh -y
	# 设置默认终端
	sudo chsh -s /bin/zsh
fi

if [ -d ~/.oh-my-zsh ]; then
	echo "oh-my-zsh is already installed"
	exit 1
fi

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
FILE_PATH=$(readlink -f "$0")
CURR_DIR=$(dirname $FILE_PATH)
cp $CURR_DIR/.zshrc ~/.zshrc

echo "zsh && oh-my-zsh install successfully, please reboot"
