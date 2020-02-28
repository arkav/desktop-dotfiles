# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/arkav/.zshrc'

# enable Vi mode
set -o vi
# Autocomplete
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)
# Prompt
PS1='[%F{blue}%n%f:%F{yellow}%~%f] $'
## Quick aliases
# General
alias q=exit
alias ls=exa
# Config reload
alias xrl="xrdb ~/.Xresources"
alias zshrl="source ~/.zshrc"
alias i3rl="i3-msg reload"
# set editor to vim
export EDITOR=vim
# wallpaper stuff
setwall() {
	echo "Press 1 to set selected image as current wallpaper."
	feh -. --action1 ';feh --bg-scale ~/.config/walls/%n && dunstify "Set wallpaper to %n" -i ~/.config/walls/%n' ~/.config/walls/*
}

# project commands
notes() {
	NOTE=~/notes/$1.md
	if [[ ! -f $NOTE ]]; then
		echo "# $1" > $NOTE
	fi
	vim -c Automd $NOTE
}

genclass() {
	echo "#ifndef $1:u_H\n#define $1:u_H\n\n#endif" >> src/$1.hh
	echo "#include \"$1.hh\"" >> src/$1.cc
	vim src/$1.hh 
}

# syntax hilighting needs to be last
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
