setopt no_global_rcs

export LANG='en_US.UTF-8'
export LC_ALL="en_US.UTF-8"
export GOPATH=${HOME}/go
export PATH="./node_modules/.bin:$HOME/.local/bin:$HOME/.stack/programs/x86_64-osx/ghc-7.10.3/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$GOPATH/bin"
export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=100000 # save size of memory
export SAVEHIST=100000 # save size of file
setopt share_history
setopt hist_ignore_all_dups

#export NVM_DIR="/Users/hiranohiroki/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

