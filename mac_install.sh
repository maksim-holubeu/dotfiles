#TODO  settings, su, sudo update after install
# SELF_DIR="$(dirname $0)"
SELF_DIR=$PWD

init_settings() {
  # brew update && brew upgrade
  export HOMEBREW_NO_AUTO_UPDATE=1
}

install_git() {
  cp $SELF_DIR/gitignore_global $HOME/.gitignore_global
  brew install git
  git config --global color.ui true
  git config --global user.name  "marian_golubev"
  git config --global user.email "marian_golubev@epam.com"
  $git config --global user.name  "$1"
  #git config --global user.email "$2"
  git config --global push.default current
  git config --global core.excludesfile ~/.gitignore_global
  git config --global help.autoCorrect -1
}

install_vim() {
  brew install vim neovim
  brew install the_silver_searcher

  brew install python3 python2
  pip3 install neovim
  pip install neovim

  brew install npm
  npm install -g neovim

  curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  mkdir $HOME/.vim -p
  cp -r $SELF_DIR/vim/vim/* $HOME/.vim
  cp $SELF_DIR/vim/vimrc $HOME/.vimrc
  mkdir ~/.config
  ln -s ~/.vim ~/.config/nvim
  ln -s ~/.vimrc ~/.config/nvim/init.vim
  yes | vim +PlugInstall
}

install_fonts() {
  cp -r $SELF_DIR/fonts/zsh_powerline_fonts/* /Library/Fonts 
}

install_zsh() {
  brew install zsh
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  cp $SELF_DIR/zshrc $HOME/.zshrc
  cp -r $SELF_DIR/zsh $HOME/.zsh
  brew tap sambadevi/powerlevel9k
  brew install powerlevel9k
  git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
  chsh -s `which zsh`
}

install_ruby() {
  #install rvm
  #\curl -sSL https://get.rvm.io | bash -s stable --rails 
  #rvm install 2.5.3
  #rvm use 2.5.3 --default

  cp "$SELF_DIR/pryrc" "$HOME/.pryrc"
  cp "$SELF_DIR/irbrc" "$HOME/.irbrc"
  cp "$SELF_DIR/gemspec_template" "$HOME/.gemspec_template"
}

install_postgresql() {
  brew install postgresql
  pg_ctl -D /usr/local/var/postgres start && brew services start postgresql
}

install_gems() {
rvm @global do gem install bundler pry pry-rails interactive_editor awesome_print neovim rmagick shutup ripper-tags end
}

install_programs(){
  install_postgresql

  brew install htop
  brew install ctags
  brew install gpg
  brew install nodejs
  brew install md5sha1sum
  brew install qt
  brew install capybara-webkit
  brew install tmux
  brew install overmind
}

install_steam() {
  brew cask install steam
}

# tmp_configs() {
  #for example
  #sudo bash -c "echo '127.0.0.1  localhost www1.centerv.by www.centerv.by crm1.centerv.by centerv.by centerv.by.local'>> /etc/hosts"
# }

init_settings
#install_git
#install_zsh
#install_fonts
#install_ruby
#install_gems
#install_steam
install_programs
#install_vim