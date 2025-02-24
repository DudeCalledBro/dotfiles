unset LSCOLORS
export CLICOLOR=1
export CLICOLOR_FORCE=1

# Disable No File Found
unsetopt nomatch

# Update PS1 Prompt
export PS1=$'\n'"%F{green}[%m]%F %F{white}%4~ "$'\n'"$ "

# Include Aliases (if present)
if [ -f ~/.aliases ]; then
    source ~/.aliases
fi

# Delete a given line number in the known_hosts file
knownrm() {
    re='^[0-9]+$'
    if ! [[ $1 =~ $re ]]; then
        echo "error: line number missing" >&2;
    else
        sed -i '' "$1d" ~/.ssh/known_hosts
    fi
}

# Default Aliases
alias ls="ls --color=auto"
alias ll="ls -alF"
alias la="ls -A"
alias l="ls -CF"

alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"

alias vim="nvim"

# Alias for Root SSH Sessions
alias sshr="ssh -o 'User=root' $@"
