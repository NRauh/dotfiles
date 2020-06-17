source "$HOME/.antigen.zsh"

antigen use oh-my-zsh

export VISUAL=nvim
export EDITOR="$VISUAL"

antigen bundle git
antigen bundle docker-compose

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle walesmd/caniuse.plugin.zsh
antigen bundle zsh-users/zsh-history-substring-search
# antigen bundle zsh-users/zsh-syntax-highlighting

BULLETTRAIN_PROMPT_ORDER=(
	time
	dir
	git
	status
)
BULLETTRAIN_DIR_FG="black"
BULLETTRAIN_DIR_EXTENDED=0

COMPLETION_WAITING_DOTS="true"
ZSH_AUTOSUGGEST_USE_ASYNC=1

antigen theme caiogondim/bullet-train.zsh
antigen apply

# bindkey '^[[A' history-substring-search-up
# bindkey '^[[B' history-substring-search-down

bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# Load private settings

source $HOME/.zshrc-local
