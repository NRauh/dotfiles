export ZSH=/home/nrauh/.oh-my-zsh

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

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Load private settings

source $HOME/.zshrc-local

