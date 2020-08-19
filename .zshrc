# homebrew: user local installed homebrew
export PATH="$HOME/homebrew/bin:$PATH"

# anyenv:
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

# jenv:
eval "$(jenv init -)"

# zsh: pushd history duplication restriction
setopt pushd_ignore_dups
# zsh: command history duplication restriction
setopt hist_ignore_all_dups
# zsh: don't add command history if started with 'space'
setopt hist_ignore_space
# zsh: share history between terminals
setopt share_history