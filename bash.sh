# Completions -------------------------------------------------------------------------------------
source ~/.dotfiles/bashmarks/bashmarks.sh
source ~/.dotfiles/git_completion.sh

# Prompt magic ------------------------------------------------------------------------------------
function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}

export PS1='\h:\W$(__git_ps1 "[\[\e[0;32m\]%s\[\e[0m\]\[\e[0;33m\]$(parse_git_dirty)\[\e[0m\]]")$ '

# Exports -----------------------------------------------------------------------------------------
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH
export EDITOR='subl -w'

# Aliases -----------------------------------------------------------------------------------------
alias ls='ls -FGhl'
alias la='ls -FGhlA'

# Aliases for services ----------------------------------------------------------------------------
alias mongo_start="mongod run --config /usr/local/Cellar/mongodb/2.0.0-x86_64/mongod.conf"
alias redis_start="redis-server /usr/local/etc/redis.conf"
alias postgres_start="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias postgres_stop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
alias elastic_start="elasticsearch -f -D es.config=/usr/local/Cellar/elasticsearch/0.16.2/config/elasticsearch.yml"

# Aliases for Ruby stuff --------------------------------------------------------------------------
alias fs='foreman start'
alias BOOM='rake db:reset; rake db:test:prepare'
alias tc='thoughtcrime start'

# External crap -----------------------------------------------------------------------------------
source ~/.dotfiles/aws.sh

# RVM last!
[[ -s "/Users/brian/.rvm/scripts/rvm" ]] && source "/Users/brian/.rvm/scripts/rvm"
