# homebrew: global installed homebrew
export PATH="/opt/homebrew/bin:$PATH"

# homebrew: user local installed homebrew
export PATH="$HOME/homebrew/bin:$PATH"

# dart pub:
 export PATH="$PATH":"$HOME/.pub-cache/bin"

# anyenv:
if command -v anyenv &> /dev/null
then
    export PATH="$HOME/.anyenv/bin:$PATH"
    eval "$(anyenv init -)"    
fi

# jenv:
if command -v jenv &> /dev/null
then
    eval "$(jenv init -)"
fi

# direnv:
if command -v direnv &> /dev/null
then
    eval "$(direnv hook zsh)"
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