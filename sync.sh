# 一键同步配置
if [ -z $@ ]; then
        echo "Please input param as tool name, such as vim, zsh..."
        echo "if you want to install all tools, please set \$1=ALL"
fi
for t in "$@"; do
        sh "$t/sync.sh"
        echo $t "sync successfully"
done

