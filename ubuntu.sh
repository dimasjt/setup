#!/bin/sh

echo `cd ~`
echo Update
echo `sudo apt-get update`

echo Install ZSH
echo `sh -c "$(curl -fsSL
https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

echo Install Vim
echo `sudo apt-get install vim`

echo Install Node Version Manager
echo `curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash`

echo Install NodeJS
echo `nvm install 6`

echo Install Yarn
echo `curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list`
echo `sudo apt-get update && sudo apt-get install yarn`

echo Install ruby-build and rbenv
echo `git clone https://github.com/rbenv/rbenv.git ~/.rbenv`
echo `cd ~/.rbenv && src/configure && make -C src`
echo `~/.rbenv/bin/rbenv init`
echo `git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build`
echo `source ~/.zshrc`
echo `rbenv install 2.4.1`

echo Install PostgreSQL
echo Install ImageMagick

