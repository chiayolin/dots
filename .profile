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
elif test -n "$SSH_CONNECTION"; then
  export PS1='$(_dirnow) $ '
else
  export PS1='$(_dirnow) λ '
fi

# common history file
export HISTFILE='~/.history'

# VIM as the default editor
export EDITOR='vim'

# dotfile alias for git
alias dots='$(which git) --git-dir=$HOME/.dots --work-tree=$HOME'

# so tmux can display unicode 'λ' in the prompt
alias tmux='tmux -u'

# pretty print the path (from @andrewratliff)
alias path='echo $PATH | tr -s ":" "\n"'

# local env (not backed up)
source $HOME/.env

