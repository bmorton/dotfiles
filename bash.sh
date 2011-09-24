# Completions
source ~/.dotfiles/bashmarks/bashmarks.sh
source ~/.dotfiles/git_completion.sh

# Prompt magic
function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}

export PS1='\h:\W$(__git_ps1 "[\[\e[0;32m\]%s\[\e[0m\]\[\e[0;33m\]$(parse_git_dirty)\[\e[0m\]]")$ '

# Exports
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PATH=$PATH:/usr/local/mysql/bin:/usr/local/www/cakephp/cake/console
export NODE_PATH=/usr/local/lib/node
#export CC=/usr/bin/gcc-4.2
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH

# Aliases
alias mongo_start="mongod run --config /usr/local/Cellar/mongodb/2.0.0-x86_64/mongod.conf"
alias redis_start="redis-server /usr/local/etc/redis.conf"
alias ls='ls -FGhl'
alias la='ls -FGhlA'
alias push_platypus="cd /Volumes/1703india/Projects/kitchensink && knife ssh 'role:platypus_web_unicorn' 'sudo chef-client' -a ec2.public_hostname -x ec2-user"
alias fs='foreman start'

# External crap
source ~/.dotfiles/aws.sh

# RVM last!
[[ -s "/Users/brian/.rvm/scripts/rvm" ]] && source "/Users/brian/.rvm/scripts/rvm"
