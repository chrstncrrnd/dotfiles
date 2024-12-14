alias c='clear'
alias dt='cd ~/Desktop'
alias ..='cd ..'
alias ...='cd ..; cd ..'
alias ....='cd ..; cd ..; cd ..'
alias o='xdg-open'
alias ports='sudo ss -ltnp'
alias ls='lsd'
alias lsl="ls -l"
alias lsa='ls --all --color=auto'
alias lsla="ls -la"
alias h='cd ~'
alias change-java="sudo update-alternatives --config java"
alias hx="helix"


delete() {
	echo "Are you sure you want to delete the file $1? [Y]es, [N]o "
	read userinput
	if [ $userinput == "y" ];	
	then
		command rm -rf $1
	else
		echo "Aborted"	
	fi
}

rm(){
	trash "$1"
}

paper() {
	java -jar "$1" --nogui
}

