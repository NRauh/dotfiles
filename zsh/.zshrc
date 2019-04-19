# Preventing NVM prefix error in tmux
if [ -n $TMUX ]; then
	PATH=""
	source /etc/profile
fi

export ZSH="$HOME/.oh-my-zsh"

export VISUAL=vim
export EDITOR="$VISUAL"

BULLETTRAIN_PROMPT_ORDER=(
	time
	dir
	git
	status
)
BULLETTRAIN_DIR_FG="black"
BULLETTRAIN_DIR_EXTENDED=0
ZSH_THEME="bullet-train/bullet-train"

COMPLETION_WAITING_DOTS="true"

plugins=(
	git
	findtext
	mkcd
)

source $ZSH/oh-my-zsh.sh

# Load private settings

source $HOME/.zshrc-local

# NVM setup
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

