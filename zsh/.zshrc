source "$HOME/.antigen.zsh"

antigen use oh-my-zsh

export VISUAL=nvim
export EDITOR="$VISUAL"

antigen bundle git
antigen bundle docker-compose

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle walesmd/caniuse.plugin.zsh

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
