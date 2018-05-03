#!/bin/sh
# Testing full install of Ghost Blog for Ubuntu 16.04

cd ~
[ -d .config ] && echo ".config dir exists, not replacing" || mkdir .config
chown $USER .config
curl -sL https://deb.nodesource.com/setup_8.x -o nodesource_setup.sh
bash nodesource_setup.sh
apt-get install nodejs
apt-get install build-essential
apt-get install nginx
apt-get install mysql-server
mysql_secure_installation
npm i -g ghost-cli
mkdir -p /var/www/ghost
chown $USER:$USER /var/www/ghost
chmod 775 /var/www/ghost
cd /var/www/ghost/
ghost install
