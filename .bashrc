if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi
eval "$(starship init bash)"


 please!() {
    sudo $(history -p !!)
}

