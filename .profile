source .functions
source .aliases

# Setup starship: https://starship.rs/
eval "$(starship init bash)"
export STARSHIP_CONFIG=~/.config/starship.toml

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
