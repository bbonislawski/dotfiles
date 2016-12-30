export ZSH=/Users/b0ni/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git bundler osx rake ruby)

source $ZSH/oh-my-zsh.sh
test -s "$HOME/.kiex/scripts/kiex" && source "$HOME/.kiex/scripts/kiex"
pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start
export EDITOR=vim
alias testmigrate='bin/rails db:migrate RAILS_ENV=test'
export DISABLE_SPRING=1
