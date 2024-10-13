all_tools="htop btop batcat"
tool=""
for t in ${all_tools}
do
	echo $t
	if [ -e /usr/bin/$t ];then
		echo "$t is already install, skip..."
		continue;
	fi
	sudo apt install $t
	echo "$t success install ..."
#	sudo apt install $t
done
# htop


# btop


# batcat
