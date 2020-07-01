eval "$(rbenv init -)"
export PATH="$(brew --prefix qt@5.5)/bin:$PATH"


# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
# ZSH_THEME="awesomepanda"

# export DEFAULT_USER="v1rgul"
export TERM="xterm-256color"

ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='awesome-patched'

POWERLEVEL9K_DIR_PATH_SEPARATOR=
POWERLEVEL9K_FOLDER_ICON=""
POWERLEVEL9K_HOME_SUB_ICON="\uE12C"
POWERLEVEL9K_DIR_PATH_SEPARATOR="  "
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR="  "
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR="  "
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0

POWERLEVEL9K_DIR_OMIT_FIRST_CHARACTER=true

POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND='black'
POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND='178'
POWERLEVEL9K_NVM_BACKGROUND="238"
POWERLEVEL9K_NVM_FOREGROUND="green"
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="blue"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="015"

POWERLEVEL9K_VCS_STAGED_ICON='\u00b1'
POWERLEVEL9K_VCS_UNTRACKED_ICON='\u25CF'
POWERLEVEL9K_VCS_UNSTAGED_ICON='\u00b1'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='\u2193'
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\u2191'

POWERLEVEL9K_TIME_BACKGROUND='255'
#POWERLEVEL9K_COMMAND_TIME_FOREGROUND='gray'

POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon root_indicator dir dir_writable vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status rbenv background_jobs time)
POWERLEVEL9K_SHOW_CHANGESET=true
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='black'; POWERLEVEL9K_DIR_HOME_FOREGROUND='black'

source $ZSH/oh-my-zsh.sh

stty -ixon

plugins=(git)

export LANG=en_US.UTF-8

export HOMEBREW_AUTO_UPDATE_SECS=86400
export HISTSIZE=200000
export SAVEHIST=200000
export HISTFILE="$HOME/.zsh_history"
export SAVEHIST=$HISTSIZE
setopt hist_ignore_all_dups
# Aliases
# alias e='emacs --insecure'
alias e='emacs -nw'
alias rtg='ripper-tags -R --extra=q'
# alias vim='vim'
alias be='bundle exec'
alias x='exit'
alias v='nvim'
alias sv="sudo nvim"
alias s='subl'
alias t='touch'
alias md='mkdir'
alias g='gedit'
alias p='pry'
alias mysql='mysql --auto-rehash'
alias kl='kill -9'
alias o='xdg-open'
alias ctg='ctags -R --exclude=.git --exclude=log -f tmp/tags *'
alias ctags="`brew --prefix`/bin/ctags -R --exclude=.git --exclude=log *"

alias ls='ls -G'

# alias ls='ls --color=auto'

alias gi='git init'
alias ga='git add'
alias gc='git commit -m'
alias gca='git commit --amend'
alias gcam='git commit --amend -m'
alias gcmf='git commit -m "Minor fix"'
alias gcsf='git commit -m "Style fix"'
alias gcmfs='git commit -m "Minor fixes"'
alias gp='git push'
alias gpo='git push origin'
alias gpom='git push origin master'
alias gpoh='git push origin HEAD'
alias gs='git status -s'
alias gr='git reset'
alias gcl='git clone'
alias gpl='git pull --rebase'
alias gsh='git stash'
alias gshc='git stash clear'
alias gsha='git stash apply'
alias gco='git checkout'
alias gcom='git checkout master'
alias gcod='git checkout develop'
alias gplom='git pull origin master'
alias gplod='git pull origin develop'
alias gd='git diff'
alias grm='git rebase master'
alias grd='git rebase develop'


alias gl="git log --date-order --date=iso --graph --full-history --all --pretty=format:'%x08%x09%C(red)%h %C(cyan)%ad%x08%x08%x08%x08%x08%x08%x08%x08%x08%x08%x08%x08%x08%x08%x08 %C(bold blue)%<(10)%aN%C(reset) %C(reset)%<(70,trunc)%s%C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset) '"

alias sudo apt-get install='sudo apt-get install -y'
alias sudo apt-get add-apt-repository='sudo apt-get add-apt-repository -y'
alias f=fg
alias si='sudo apt-get install -y'
alias sp='sudo apt-get purge'
alias bi='bundle init --gemspec=~/.gemspec_template'
alias bl='bundle install'
alias bgi='gem install'

alias ez="nvim ~/.zshrc"
alias ev="nvim ~/.config/nvim/init.vim"

# alias rc='spring stop && bundle exec rails c'
# alias rs='spring stop && bundle exec rails s'
alias rc='bundle exec rails c'
alias rs='bundle exec rails s'
alias rr='bundle exec rake routes'
alias rs2='ruby script/server -u'
alias rc2='ruby script/console'
alias rdb='bundle exec rake db:migrate'
alias rdbr='bundle exec rake db:rollback'
alias be='bundle exec'
alias ber='bundle exec rspec'
alias re='bundle exec rspec'
alias pr='bundle exec pronto run'

#Heroku
alias h='heroku'

# alias tmux=«TERM=screen-256color tmux»
# alias tmux='tmux attach || tmux new' #save sessions
tmux_session=common

zstyle ':completion:*' rehash true

# for GOLANG installation
export GOPATH=$HOME/workspace/go
export PATH=$PATH:/usr/local/go/bin

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
precmd() {
  # sets the tab title to current dir
  echo -ne "\e]1;$PWD\a"
}

export NVM_DIR="/Users/fiodar_turliuk/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# For pkg-config to find zlib you may need to set:
export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig"

export PATH="/usr/local/opt/qt@5.5/bin:$PATH"
eval "$(rbenv init -)"
