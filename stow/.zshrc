source "$HOME/.antigen.zsh"

antigen use oh-my-zsh

export VISUAL=nvim
export EDITOR="$VISUAL"

antigen bundle git
antigen bundle docker-compose

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle walesmd/caniuse.plugin.zsh
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle paulirish/git-open
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

# bindkey "$terminfo[kcuf1]" history-substring-search-up # right
# bindkey "$terminfo[kcub1]" history-substring-search-down # left

# Load private settings

source $HOME/.zshrc-local

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
