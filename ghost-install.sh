#!/bin/sh
# Full install of Ghost Blog for Ubuntu 16.04
cd ~
[ -d .config ] && echo ".config dir exists, not replacing" || mkdir .config
chown $SUDO_USER .config
curl -sL https://deb.nodesource.com/setup_8.x -o nodesource_setup.sh
bash nodesource_setup.sh
apt-get install -y nodejs
apt-get install -y build-essential
apt-get install -y nginx
apt-get install -y mysql-server
mysql_secure_installation
npm i -g ghost-cli
mkdir -p /var/www/ghost
chown $SUDO_USER:$SUDO_USER /var/www/ghost
chmod 775 /var/www/ghost
cd /var/www/ghost/
sudo -u $SUDO_USER ghost install
