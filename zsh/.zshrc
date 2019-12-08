source "$HOME/.antigen.zsh"

antigen use oh-my-zsh

export VISUAL=vim
export EDITOR="$VISUAL"

antigen bundle git

antigen bundle zsh-users/zsh-autosuggestions

BULLETTRAIN_PROMPT_ORDER=(
	time
	dir
	git
	status
)
BULLETTRAIN_DIR_FG="black"
BULLETTRAIN_DIR_EXTENDED=0

COMPLETION_WAITING_DOTS="true"

antigen theme caiogondim/bullet-train.zsh
antigen apply

# Load private settings

source $HOME/.zshrc-local

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

