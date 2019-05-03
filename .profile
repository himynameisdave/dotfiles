source .functions
source .aliases

# Dat NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
# Dat Golang
export GOPATH=$HOME/go
# Dat Rust
export PATH="$HOME/.cargo/bin:$PATH"
# Dat yarn
export PATH="$HOME/.yarn/bin:$PATH"
# Dat Postgres
export PATH=/Applications/Postgres.app/Contents/Versions/latest/bin:${PATH}

# iTerm2 Stuff
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# Show git branch in terminal
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] ➡️  "
