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
alias lswall="exa ~/.config/walls"
wallpaper () {
	feh --bg-scale ~/.config/walls/$1
	echo $1 > ~/.config/wall
	dunstify "Changed wallpaper to ~/.config/walls/$1"
}
