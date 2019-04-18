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

# Show git branch in terminal
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] ➡️  "
