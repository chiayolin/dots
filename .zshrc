setopt PROMPT_SUBST # eval subst(s) in PS1
source $HOME/.profile

# save history
SAVEHIST=10000
HISTSIZE=10000
SAVEHIST=10000

# have to do this again for zsh
HISTFILE=~/.history

setopt SHARE_HISTORY

# don't show duplicate history entires
setopt hist_find_no_dups

# remove unnecessary blanks from history
setopt hist_reduce_blanks

# vim, the best editor, mode
bindkey -v
bindkey -M viins 'kj' vi-cmd-mode

# backup current prompt since it is different under ssh (see '.profile')
_PS1=$PS1

# modify prompt for vi-mode
#   * zle-line-init: execute on new line of input
#   * zle-keymap-select: execute on keymap chang
zle-line-init zle-keymap-select () {
  case "$KEYMAP" in
    vicmd ) PS1='$(_dirnow) : ' ;;
    *     ) PS1=$_PS1           ;; # restore backed-up prompt
  esac

  zle reset-prompt # update prompt using PS1
}

zle -N zle-line-init
zle -N zle-keymap-select

# fix delete key in vi-mode
bindkey "^?" backward-delete-char

