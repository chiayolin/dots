# set UTF-8
export LC_CTYPE=en_US.UTF-8

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
	export PS1='$(_dirnow) λ '
fi

# VIM as the default editor
export EDITOR='vim'

# dotfile alias for git
alias dots='$(which git) --git-dir=$HOME/.dots --work-tree=$HOME'

# so tmux can display unicode 'λ' in the prompt
alias tmux='tmux -u'

# local env (not backed up)
source $HOME/.env
