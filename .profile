# POSIX compatible prompt

_dirnow() {
	if test $PWD = $HOME; then
		echo '~'
	else
		echo $(basename $PWD)
	fi
}

if test $(id -u) -eq 0; then
	export PS1='$(_dirnow) # '
else
	export PS1='$(_dirnow) $ '
fi

# VIM as the default editor
export EDITOR='vim'

# dotfile alias for git
alias dots='$(which git) --git-dir=$HOME/.dots --work-tree=$HOME'
