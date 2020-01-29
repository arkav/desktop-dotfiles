# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/arkav/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

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
# wallpaper stuff
setwall () {
	echo "Press 1 to set selected image as current wallpaper."
	feh -. --action1 ';feh --bg-scale ~/.config/walls/%n && dunstify "Set wallpaper to %n" -i ~/.config/walls/%n' ~/.config/walls/*
}

ccnew () {
	
}
