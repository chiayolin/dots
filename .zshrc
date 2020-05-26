setopt PROMPT_SUBST # eval subst(s) in PS1
source $HOME/.profile

# save history
SAVEHIST=1000
HISTSIZE=10000
SAVEHIST=1000

# have to do this again for zsh
HISTFILE=~/.history

setopt SHARE_HISTORY

# don't show duplicate history entires
setopt hist_find_no_dups

# remove unnecessary blanks from history
setopt hist_reduce_blanks
# The next line updates PATH for the Google Cloud SDK.

if [ -f '/Users/cyl/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/cyl/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/cyl/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/cyl/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="/usr/local/sbin:$PATH"

# opam configuration
test -r /Users/cyl/.opam/opam-init/init.zsh && . /Users/cyl/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
