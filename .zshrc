# homebrew: global installed homebrew
export PATH="/opt/homebrew/bin:$PATH"

# homebrew: user local installed homebrew
export PATH="$HOME/homebrew/bin:$PATH"

# dart pub:
 export PATH="$PATH":"$HOME/.pub-cache/bin"

# starship
if command -v starship &> /dev/null
then
    eval "$(starship init zsh)"
fi

# zsh: pushd history duplication restriction
setopt pushd_ignore_dups
# zsh: command history duplication restriction
setopt hist_ignore_all_dups
# zsh: don't add command history if started with 'space'
setopt hist_ignore_space
# zsh: share history between terminals
setopt share_history
# zsh:   perform history expansion and reload the line into the editing buffer
setopt hist_verify

export EDITOR='nano'
export VISUAL='nano'

# Create history log per working directory in bash - Unix & Linux Stack Exchange
# https://unix.stackexchange.com/questions/305524/create-history-log-per-working-directory-in-bash
function ch () {
    cd "$@"
    export HISTFILE="$(pwd)/.zsh_history"
}

# asdf:
if command -v asdf &> /dev/null
then
. /opt/homebrew/opt/asdf/libexec/asdf.sh
fi