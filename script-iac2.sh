#!/bin/bash

echo "Atualizando o servidor..."
apt-get uptade
apt-get upgrade -y
apt-get install apache2 unzip -y

echo "Baixando e copindo arquivos..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html

