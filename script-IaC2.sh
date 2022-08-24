#!/bin/bash

echo "ATUALIZANDO O SERVIDOR..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "BAIXANDO E COPIANDO OS ARQUIVOS DA APLICAÇÃO..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
