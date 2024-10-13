FILE_PATH=$(readlink -f "$0")
DIR_PATH=$(dirname $FILE_PATH)

if command lsd -v > /dev/null 2>&1; then
	echo "lsd is already install"
else
	apt install lsd
fi
echo "lsd install successfully"

# 安装字体
if command fc-list | grep "Nerd" > /dev/null 2>&1; then
	echo "your system has Nerd Font"
	exit 0
fi

cd ${DIR_PATH}/../fonts/Hack/
sudo cp *.ttf /usr/share/fonts
sudo fc-cache -vf

echo "Nerd Font has installed successfully, please select like font for your terminal"
