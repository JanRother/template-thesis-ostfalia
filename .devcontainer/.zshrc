export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

export STARSHIP_CONFIG=~/.config/starship.toml

eval "$(starship init zsh)"

zi light-mode wait lucid depth=1 for \
	atinit"zicompinit; zicdreplay" \
    OMZP::git \
    OMZP::history \
    OMZP::gitignore \
    OMZP::command-not-found \
	zdharma-continuum/fast-syntax-highlighting \
	zdharma-continuum/history-search-multi-word \
	zsh-users/zsh-history-substring-search \
    zsh-users/zsh-completions \
    zsh-users/zsh-autosuggestions \
    Aloxaf/fzf-tab

# Load completions
autoload -Uz compinit && compinit
zi cdreplay -q
