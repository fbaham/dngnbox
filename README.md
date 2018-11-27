# DNGNbox
a Vagrant box for Rails developers
- Rails 5.2.1
- Ruby 2.5.1
- rvm 1.29.4
- Nodejs v8.10.0
- npm 3.5.2
- PostgreSQL 10.6
- MySQL 14.14
- Git 2.17.1
- Heroku 7.18.9

## Installation
First clone this repository in your home folder
~~~~
cd ~/ && git clone https://github.com/dngnmster/dngnbox
~~~~
Then in your host machine create the folder '~/code/rails' 
~~~~
mkdir -p ~/code/rails
~~~~
And in the guest machine type 
~~~~
cd /vagrant && rails new myapp
~~~~

## Usage
> mkdir ~/code && rails new app

## Config
- PostgreSQL user: dngnbox
- MySQL user: dngnbox
- MySQL password : dngnbox

Add the following code in your .bashrc file to create shorcuts
~~~~
# vagrant up shorcut
function dnup() {
    ( cd ~/dngnbox && vagrant up )
}

# vagrant ssh shorcut
function dnssh() {
    ( cd ~/dngnbox && vagrant ssh )
}
~~~~
