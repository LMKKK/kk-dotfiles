#!/bin/bash
skip_list="fonts"
if [ -z "$*" ]; then
	echo "Please input param as tool name, such as vim, zsh..."
	echo "if you want to install all tools, please set \$1=ALL"
fi
# $1=ALL安装所有的应用
list=$*
if [ $1'x' = 'ALLx' ] ;then 
	echo "Are you sure install all tools?"
	echo "There are tools which will install:"
	echo	$(ls -d */)
	ready='no'
	echo "Please input yes/y or no/n: "
	read -t 15 ready
	if [ $ready != "y" ] && [ $ready != "yes" ] ;then
		echo "Stop install..."
		exit 1
	fi
	list=$(ls -d */ | tr "/" " ")
fi

for t in $list; do
	sh "$t/install.sh"
	echo $t "install successfully"
done

