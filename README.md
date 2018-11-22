# DNGNbox
## a Vagrant box for Rails developers
- Rails 5.2.1
- Ruby 2.5.1
- rvm 1.29.4
- Nodejs v8.10.0
- npm 3.5.2
- PostgreSQL 10.6
- MySQL 14.14
- Git 2.17.1

## Installation
In your host machine create the folder '~/code/rails' and generate your rails app here, this folder is synced with '/vagrant' folder in the box.

## Config
- PostgreSQL user: dngnbox
- MySQL user: dngnbox
- MySQL password : dngnbox

Add the following code in your .bashrc file to create shorcuts
~~~~
# vagrant up shorcut
function dngnboxup() {
    ( cd ~/dngnbox && vagrant up )
}

# vagrant ssh shorcut
function dngnboxssh() {
	( cd ~/dngnbox && vagrant ssh )
}
~~~~
